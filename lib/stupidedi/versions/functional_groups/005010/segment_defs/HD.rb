module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          HD = s::SegmentDef.build(:HD, "Audit or Compare", "",
            e::E1069 .simple_use(r::Relational,   s::RepeatCount.bounded(1)),
            e::E0000991 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E1336 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E0000996 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E0000997 .simple_use(r::Optional,   s::RepeatCount.bounded(1))

          )

        end
      end
    end
  end
end
