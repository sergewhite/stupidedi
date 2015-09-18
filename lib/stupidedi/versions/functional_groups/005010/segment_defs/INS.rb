module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          INS = s::SegmentDef.build(:INS, "Member Level Details", "",
            e::E1073 .simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E1069 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E0000991 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E0000992 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E1143 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E0000993 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E0000994 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E584 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E1220 .simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E1073 .simple_use(r::Mandatory,  s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
