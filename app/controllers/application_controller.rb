class ApplicationController < ActionController::Base
  include Pagy::Backend

  protected

  def handle_unauthorized
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end

  def authorize_admin!
    return if current_user&.is_admin?
    raise CanCan::AccessDenied
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
