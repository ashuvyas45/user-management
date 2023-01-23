module V1
  class UserPermissionsController < ::ApplicationController

    def create
      render_response(UserPermissionService.create(permitted_params))
    end

    private

    def permitted_params
      binding.pry
      params.require(:user_id)
      params.require(:permission_id)
      params.require(:user_permission).permit!
    end
  end
end
