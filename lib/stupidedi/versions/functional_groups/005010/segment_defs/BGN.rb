module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module SegmentDefs

          s = Schema
          e = ElementDefs
          r = ElementReqs

          BGN = s::SegmentDef.build(:BGN, "Beginning of Hierarchical Transaction",
            "To define the business hierarchical structure of the transaction set and identify the business application purpose and reference data, i.e., number, date, and time",
            e::E353.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E127.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E353.simple_use(r::Mandatory,  s::RepeatCount.bounded(1)),
            e::E337.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E127.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E640.simple_use(r::Optional,   s::RepeatCount.bounded(1)),
            e::E306.simple_use(r::Optional,   s::RepeatCount.bounded(1)))
        end
      end
    end
  end
end
