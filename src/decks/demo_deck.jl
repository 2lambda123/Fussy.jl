function demo_deck(cur_T_bar::AbstractSymbol)
  BaseReactor(
    T_bar = cur_T_bar,
    H = 1.1,
    Q = 39.86,
    epsilon = 0.3226,
    kappa_95 = 1.590,
    delta_95 = 0.333,
    nu_n = 0.27,
    nu_T = 1.094,
    Z_eff = 2.584,
    f_D = 0.7753,
    A = 2.735,
    l_i = 1.155,
    N_G = 1.2,
    eta_T = 0.3531,
    eta_RF = 0.4,
    tau_FT = 7273.0,
    tau_RU = 15.0,
    tau_RD = 15.0,
    tau_DW = 1800.0,
    C_ejima = 0.3,
    B_CS = 12.77,
    R_CS = 2.483,
    dR_CS = 0.8181,
    max_beta_N = 0.02591,
    max_q_95 = 2.5,
    max_P_E = 1500.0,
    max_P_W = 8.0,
    max_q_DV = 10.0,
    sigma_CS = 660,
    sigma_TF = 660,
    J_CS = 50,
    J_TF = 230
  )
end