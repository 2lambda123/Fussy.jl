@testset "Cryostat Cost Function Tests" begin

  @test isdefined(Tokamak, :Cryostat_Cost) == true

  Tokamak.load_input(" R_0 = 5.7 * 1u\"m\" ")
  Tokamak.load_input(" T_k = 15 * 1u\"keV\" ")
  Tokamak.load_input(" epsilon = 0.2807017544 ")
  Tokamak.load_input(" kappa = 2.0 ")

  # chosen to get P_F = 500
  Tokamak.load_input(" n_bar = 0.55229943350020245 * 1u\"n20\" ")

  actual_value = Tokamak.Cryostat_Cost()

  expected_value = 7.171120331950207e+07

  @test isapprox(expected_value, actual_value, rtol=5e-4)

end
