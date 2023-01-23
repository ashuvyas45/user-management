class UserPermissionService
  class << self

    def create(params)
      record = UserPermission.new(params)
      if record.save
        return ServiceResponse.success(UserPermission.to_s.underscore => record.to_hash)
      else
        return ServiceResponse.errors(record.errors.full_message.join(','))
      end

    rescue StandardError => e
      return ServiceResponse.errors([e.message])
    end
  end
end