module V1
  class PermissionsController < ::ApplicationController
    def create
      render_response(PermissionService.create(permitted_params))
    end

    def index
      render_response(PermissionService.index)
    end

    private

    def permitted_params
      params.require(:name)
      params.require(:permission).permit!
    end
  end
end
