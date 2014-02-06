module SuperModel
  module Callbacks
    extend ActiveSupport::Concern

    included do
      instance_eval do
        extend ActiveModel::Callbacks
        define_model_callbacks :create, :save, :update, :destroy
      end
      
      class_eval(<<-EOS, __FILE__, __LINE__ + 1)
        def create
          run_callbacks :create do
            # Your create action methods here
          end
        end

        def save
          run_callbacks :save do
            # Your create action methods here
          end
        end

        def update
          run_callbacks :update do
            # Your create action methods here
          end
        end

        def destroy
          run_callbacks :destroy do
            # Your create action methods here
          end
        end
      EOS
      
    end
  end
end
