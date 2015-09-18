module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          ACT = s::SegmentDef.build(:ACT, "Third Party Administrator (TPA)",
            "Account Number",
            e::E508.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)))
        end
      end
    end
  end
end
