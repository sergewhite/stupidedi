module Stupidedi
  module Versions
    module FunctionalGroups
      module FiftyTen
        module TransactionSetDefs

          d = Schema
          r = SegmentReqs
          s = SegmentDefs

          BE834 = d::TransactionSetDef.build("BE", "834", "Benefit Enrollment and Maintenance",
            d::TableDef.header("Table 1 - Header",
              s:: ST.use( 50,  r::Mandatory, d::RepeatCount.bounded(1)),
              s::BGN.use( 100, r::Mandatory, d::RepeatCount.bounded(1)),
              s::REF.use( 150, r::Mandatory,  d::RepeatCount.bounded(1)),
              s::DTP.use( 200, r::Mandatory,  d::RepeatCount.bounded(1)),
              d::LoopDef.build("2000", d::RepeatCount.bounded(1),
                s::N1.use( 250, r::Mandatory,  d::RepeatCount.bounded(3)),
                s::ACT.use( 300, r::Mandatory,  d::RepeatCount.bounded(1)),
                s::INS.use( 350, r::Mandatory,  d::RepeatCount.bounded(1)),
                s::REF.use( 400, r::Mandatory,  d::RepeatCount.bounded(4)),
                s::DTP.use( 450, r::Mandatory,  d::RepeatCount.bounded(1)),
                d::LoopDef.build("2100", d::RepeatCount.bounded(1),
                  s::NM1.use( 500, r::Mandatory,  d::RepeatCount.bounded(1)),
                  s::N3.use( 550, r::Mandatory,  d::RepeatCount.bounded(1)),
                  s::N4.use( 600, r::Mandatory,  d::RepeatCount.bounded(1)),
                  s::DMG.use( 650, r::Mandatory,  d::RepeatCount.bounded(1)),
                  s::HLH.use( 700, r::Mandatory,  d::RepeatCount.bounded(1)),
                  s::LUI.use( 750, r::Mandatory,  d::RepeatCount.bounded(1)),
                  d::LoopDef.build("2200", d::RepeatCount.bounded(6),
                    s::HD.use( 800, r::Mandatory,  d::RepeatCount.bounded(1)),
                    s::DTP.use( 850, r::Mandatory,  d::RepeatCount.bounded(1)),
                    s::REF.use( 900, r::Optional,  d::RepeatCount.bounded(1)),
                    s::COB.use( 950, r::Optional,  d::RepeatCount.bounded(1))
                  )
                )
              ),
              s:: SE.use(1000, r::Mandatory, d::RepeatCount.bounded(1))
            ))


        end
      end
    end
  end
end
