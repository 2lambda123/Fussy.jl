@testset "I CD Function Tests" begin

  @test isdefined(Fusion, :I_CD) == true

  Fusion.load_input(" eta_CD = $(Fusion.default_eta_CD) ")

  actual_value = Fusion.I_CD()

  actual_value /= 1u"MA"

  actual_value /= ( Fusion.P_F() / 1u"MW" )

  actual_value *= Fusion.Q

  actual_value *= Fusion.symbol_dict["n_bar"]
  actual_value *= Fusion.symbol_dict["R_0"]

  expected_value = Fusion.eta_CD

  @test isapprox(expected_value, actual_value, rtol=5e-4 )

end
