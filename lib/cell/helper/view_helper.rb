module Cell
  module Helper
    # Delegate other (non asset) helpers that accept a block
    module ViewHelper
      def turbo_frame_tag(id, **args, &block)
        ::ActionController::Base.helpers.turbo_frame_tag(id, **args) do
          block.call.html_safe if block
        end
      end
    end
  end
end
