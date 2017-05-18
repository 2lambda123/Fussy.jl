@testset "Magnet Normalized Radius Function Tests" begin

  Tokamak.load_input(" R_0 = 3.3 * 1u\"m\" ")
  Tokamak.load_input(" B_0 = 9.2 * 1u\"T\" ")
  Tokamak.load_input(" I_M = 8 * 1u\"MA\" ")
  Tokamak.load_input(" T_k = 15 * 1u\"keV\" ")
  Tokamak.load_input(" n_bar = 1.5 * 1u\"n20\" ")
  Tokamak.load_input(" delta = 0.45 ")
  Tokamak.load_input(" epsilon = 0.3424242424 ")
  Tokamak.load_input(" enable_blanket_derive = false ")

  actual_value = Tokamak.magnet_normalized_radius()

  expected_value = 0.612121212121212

  @test isapprox(expected_value, actual_value, rtol=5e-4)

end
