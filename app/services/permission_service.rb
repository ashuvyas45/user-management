class PermissionService
  class << self

    def create(params)
      record = Permission.new(params)
      if record.save
        return ServiceResponse.success(Permission.to_s.underscore => record.to_hash)
      else
        return ServiceResponse.errors(record.errors.full_message.join(','))
      end

    rescue StandardError => e
      return ServiceResponse.errors([e.message])
    end

    def index
      records = Permission.all

      ServiceResponse.success(records)
    end
  end
end