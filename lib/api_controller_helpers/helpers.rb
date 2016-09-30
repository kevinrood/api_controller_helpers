module ApiControllerHelpers

  module Helpers

    def render_action_outcome(record)
      if record.valid?
        render_record(record)
      else
        render_errors(record.errors)
      end
    end

    def render_record(record)
      render json: wrap_result(record)
    end

    def render_errors(errors)
      render json: wrap_result(errors: errors), status: :conflict
    end

    def render_collection(collection)
      render json: wrap_result(collection)
    end

    def wrap_result(result)
      {data: result}
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      # add class methods here
    end

  end

end
