require 'action_controller'

module Rails6BeforeRender
    module BeforeRenderInstance

        def render(*args, &blk)
            run_callbacks :render do
                super
            end
        end

    end
end

ActionController::Base.prepend Rails6BeforeRender::BeforeRenderInstance
