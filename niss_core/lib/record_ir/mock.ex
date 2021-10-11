defmodule NissCore.RecordIR.Mock do
  require Logger

  def start do
    Logger.debug("Pretending to start")
    spawn(fn -> nil end)
  end

  def stop(_pid) do
    Logger.debug("Pretending to have received S2/B signal")

    [
      {491_871_547, 1},
      {9_075_091, 0},
      {4_504_582, 1},
      {623_805, 0},
      {508_711, 1},
      {596_249, 0},
      {539_304, 1},
      {600_213, 0},
      {537_155, 1},
      {597_361, 0},
      {539_840, 1},
      {616_861, 0},
      {521_174, 1},
      {596_249, 0},
      {541_767, 1},
      {595_194, 0},
      {538_637, 1},
      {598_286, 0},
      {539_063, 1},
      {598_083, 0},
      {1_652_486, 1},
      {602_490, 0},
      {1_672_024, 1},
      {570_508, 0},
      {1_690_801, 1},
      {569_601, 0},
      {1_642_597, 1},
      {600_823, 0},
      {1_648_431, 1},
      {600_360, 0},
      {1_655_339, 1},
      {588_212, 0},
      {1_652_893, 1},
      {599_490, 0},
      {1_650_172, 1},
      {593_878, 0},
      {538_360, 1},
      {630_138, 0},
      {506_211, 1},
      {599_860, 0},
      {1_653_005, 1},
      {600_453, 0},
      {1_648_912, 1},
      {624_417, 0},
      {508_340, 1},
      {597_786, 0},
      {537_915, 1},
      {630_917, 0},
      {505_636, 1},
      {600_212, 0},
      {535_841, 1},
      {603_824, 0},
      {1_645_023, 1},
      {627_472, 0},
      {1_622_856, 1},
      {598_953, 0},
      {534_174, 1},
      {628_194, 0},
      {508_007, 1},
      {604_101, 0},
      {1_647_857, 1},
      {595_971, 0},
      {1_649_949, 1},
      {601_842, 0},
      {1_649_005, 1},
      {594_175, 0},
      {1_650_172, 1},
      {606_193, 0},
      {40_022_120, 1},
      {9_074_332, 0},
      {2_230_476, 1},
      {628_472, 0}
    ]
  end
end
