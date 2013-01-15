module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true
    belongs_to :flagger, :polymorphic => true
    scope :with_flag, lambda { |flag| where(:flag => flag.to_s) }

    attr_accessible :flaggable_type,:flaggable_id,:flagger_type,:flagger_id,
      :flag,:flagger
  end
end

