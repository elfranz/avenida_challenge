class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  rescue_from ActionController::ParameterMissing, with: :missing_parameter
  rescue_from ActiveRecord::RecordNotFound, with: :not_found_empty_response

  def missing_parameter
    # Messages should be internationalized with I18n, we are running out of time though
    render status: :bad_request,
           json: { error: 'Missing required param.' }
  end

  def not_found_empty_response
    head :not_found
  end

  def format_errors(entity)
    # format model errors for clearer response, builds array out of all the validation errors
    errors = []
    entity.errors.each do |attr, err|
      errors << "#{attr.to_s.gsub('_', ' ').capitalize()} #{err}."
    end
    errors
  end
end
