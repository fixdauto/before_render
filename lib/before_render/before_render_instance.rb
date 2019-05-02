require 'action_controller'

class Rails6BeforeRender
    class BeforeRenderInstance

        def self.render(*args, &blk)
            run_callbacks :render do
                super
            end
        end

    end
end

ActionController::Base.prepend Rails6BeforeRender::BeforeRenderInstance
