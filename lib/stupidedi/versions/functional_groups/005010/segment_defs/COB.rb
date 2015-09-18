module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          COB = s::SegmentDef.build(:COB, "Primary", "",
            e::E1138.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E127.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E1143.simple_use(r::Mandatory,  s::RepeatCount.bounded(1))
          )

        end
      end
    end
  end
end
