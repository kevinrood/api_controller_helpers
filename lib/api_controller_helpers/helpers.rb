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
      render json: {self.class.record_json_key => record}
    end

    def render_errors(errors)
      render json: {errors: errors}, status: :conflict
    end

    def render_collection(collection)
      render json: {self.class.collection_json_key => collection}
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def record_json_key
        @record_json_key ||= name.chomp('Controller').underscore.singularize
      end

      def collection_json_key
        @collection_json_key ||= name.chomp('Controller').underscore
      end
    end

  end

end
