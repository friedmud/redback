[Mesh]
  type = GeneratedMesh
  dim = 3
  ny = 20
[]

[GlobalParams]
  disp_z = disp_z
  disp_y = disp_y
  disp_x = disp_x
  wc_z = wc_z
  wc_y = wc_y
  wc_x = wc_x
  beta = 0.25
  alpha = 0
  gamma = 0.5
[]

[Postprocessors]
  active = 'force Rotation_wcz_0_7 Rotation_wcz_0_6 Rotation_wcz_0_5 Rotation_wcz_0_4 Rotation_wcz_0_3 Rotation_wcz_0_2 Rotation_wcz_0_1 Rotation_wcz_0_9 Rotation_wcz_0_8 Displ_u_x_0_8 Displ_u_x_0_9 Displ_u_x_0_1 Displ_u_x_0_2 Displ_u_x_0_3 Displ_u_x_0_4 Displ_u_x_0_5 Displ_u_x_0_6 Displ_u_x_0_7 disp_y_top disp_x_top wc_z_top tangential_force plastic_inv_center temperature_center pressure_center'
  [./disp_y_top]
    type = PointValue
    point = '0.5 1 0.1'
    variable = disp_y
  [../]
  [./disp_x_top]
    type = PointValue
    point = '0.5 1 0.1'
    variable = disp_x
  [../]
  [./wc_z_top]
    type = PointValue
    point = '0.5 1 0.1'
    variable = wc_z
  [../]
  [./antisymmetric_pp]
    type = SideAverageValue
    variable = antisymmetric_strain_bc
    boundary = bottom
  [../]
  [./Rotation_wcz_0_9]
    type = PointValue
    variable = wc_z
    point = '0.5 0.9 0.5'
  [../]
  [./Rotation_wcz_0_8]
    type = PointValue
    variable = wc_z
    point = '0.5 0.8 0.5'
  [../]
  [./Rotation_wcz_0_7]
    type = PointValue
    variable = wc_z
    point = '0.5 0.7 0.5'
  [../]
  [./Rotation_wcz_0_6]
    type = PointValue
    variable = wc_z
    point = '0.5 0.6 0.5'
  [../]
  [./Rotation_wcz_0_5]
    type = PointValue
    variable = wc_z
    point = '0.5 0.5 0.5'
  [../]
  [./Rotation_wcz_0_4]
    type = PointValue
    variable = wc_z
    point = '0.5 0.4 0.5'
  [../]
  [./Rotation_wcz_0_3]
    type = PointValue
    variable = wc_z
    point = '0.5 0.3 0.5'
  [../]
  [./Rotation_wcz_0_2]
    type = PointValue
    variable = wc_z
    point = '0.5 0.2 0.5'
  [../]
  [./Rotation_wcz_0_1]
    type = PointValue
    variable = wc_z
    point = '0.5 0.1 0.5'
  [../]
  [./Displ_u_x_0_9]
    type = PointValue
    variable = wc_z
    point = '0.5 0.9 0.5'
  [../]
  [./Displ_u_x_0_8]
    type = PointValue
    variable = disp_x
    point = '0.5 0.8 0.5'
  [../]
  [./Displ_u_x_0_7]
    type = PointValue
    variable = disp_x
    point = '0.5 0.7 0.5'
  [../]
  [./Displ_u_x_0_6]
    type = PointValue
    variable = disp_x
    point = '0.5 0.6 0.5'
  [../]
  [./Displ_u_x_0_5]
    type = PointValue
    variable = disp_x
    point = '0.5 0.5 0.5'
  [../]
  [./Displ_u_x_0_4]
    type = PointValue
    variable = disp_x
    point = '0.5 0.4 0.5'
  [../]
  [./Displ_u_x_0_3]
    type = PointValue
    variable = disp_x
    point = '0.5 0.3 0.5'
  [../]
  [./Displ_u_x_0_2]
    type = PointValue
    variable = disp_x
    point = '0.5 0.2 0.5'
  [../]
  [./Displ_u_x_0_1]
    type = PointValue
    variable = disp_x
    point = '0.5 0.1 0.5'
  [../]
  [./force]
    type = SideAverageValue
    variable = stress_22
    execute_on = linear
    boundary = top
  [../]
  [./tangential_force]
    type = SideAverageValue
    variable = stress_12
    boundary = top
  [../]
  [./plastic_inv_center]
    type = PointValue
    variable = plastic_strain
    point = '1 0.5 1'
  [../]
  [./temperature_center]
    type = PointValue
    variable = temperature
    point = '1 0.5 1'
  [../]
  [./pressure_center]
    type = PointValue
    variable = pressure
    point = '1 0.5 1'
  [../]
[]

[Variables]
  [./disp_x]
  [../]
  [./disp_y]
  [../]
  [./disp_z]
  [../]
  [./wc_x]
  [../]
  [./wc_y]
  [../]
  [./wc_z]
  [../]
  [./temperature]
  [../]
  [./pressure]
  [../]
[]

[AuxVariables]
  [./stress_22]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./epsilon_22]
    family = MONOMIAL
  [../]
  [./epsilon_11]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./plastic_strain]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./stress_invariant]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./ecroui]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./failure]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./lagrange]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./plastic_22]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./plastic_11]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./plastic_12]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./macro_rot]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./stress_11]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./stress_12]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./plastic_cur_32]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./vel_x]
  [../]
  [./vel_y]
  [../]
  [./vel_z]
  [../]
  [./accel_x]
  [../]
  [./accel_y]
  [../]
  [./accel_z]
  [../]
  [./vel_wc_x]
  [../]
  [./vel_wc_y]
  [../]
  [./vel_wc_z]
  [../]
  [./accel_wc_x]
  [../]
  [./accel_wc_y]
  [../]
  [./accel_wc_z]
  [../]
[]

[Functions]
  [./ramp_top]
    type = ParsedFunction
    value = 0.1*t
  [../]
  [./ramp_bottom]
    type = ParsedFunction
    value = -0.1*t
  [../]
  [./tangent_hyperbolic]
    type = ParsedFunction
    value = -tanh(100*t)
  [../]
[]

[Kernels]
  active = 'T_diff cx_elastic cz_elastic cy_elastic x_couple thermal_press y_moment z_couple dT_dt dissip x_moment y_couple z_moment p_diff dp_dt'
  [./inertia_x]
    type = RedbackInertialForce
    variable = disp_x
    velocity = vel_x
    acceleration = accel_x
  [../]
  [./inertia_y]
    type = RedbackInertialForce
    variable = disp_y
    velocity = vel_y
    acceleration = accel_y
  [../]
  [./inertia_z]
    type = RedbackInertialForce
    variable = disp_z
    velocity = vel_z
    acceleration = accel_z
  [../]
  [./inertia_wc_x]
    type = RedbackInertialForce
    variable = wc_x
    velocity = vel_wc_x
    acceleration = accel_wc_x
    microinertia = 0.01
  [../]
  [./inertia_wc_y]
    type = RedbackInertialForce
    variable = wc_y
    velocity = vel_wc_y
    acceleration = accel_wc_y
    microinertia = 0.01
  [../]
  [./inertia_wc_z]
    type = RedbackInertialForce
    variable = wc_z
    velocity = vel_wc_z
    acceleration = accel_wc_z
    microinertia = 0.01
  [../]
  [./cx_elastic]
    type = RedbackCosseratDynamicStressDivergenceTensors2
    variable = disp_x
    displacements = 'disp_x disp_y disp_z'
    component = 0
  [../]
  [./cy_elastic]
    type = RedbackCosseratDynamicStressDivergenceTensors2
    variable = disp_y
    displacements = 'disp_x disp_y disp_z'
    component = 1
  [../]
  [./cz_elastic]
    type = RedbackCosseratDynamicStressDivergenceTensors2
    variable = disp_z
    component = 2
    displacements = 'disp_x disp_y disp_z'
  [../]
  [./x_couple]
    type = RedbackCosseratDynamicStressDivergenceTensors2
    variable = wc_x
    displacements = 'wc_x wc_y wc_z'
    wc_x = disp_x
    wc_y = disp_y
    wc_z = disp_z
    component = 0
    base_name = coupled
  [../]
  [./y_couple]
    type = RedbackCosseratDynamicStressDivergenceTensors2
    variable = wc_y
    component = 1
    displacements = 'wc_x wc_y wc_z'
    wc_x = disp_x
    wc_y = disp_y
    wc_z = disp_z
    base_name = coupled
  [../]
  [./z_couple]
    type = RedbackCosseratDynamicStressDivergenceTensors2
    variable = wc_z
    component = 2
    displacements = 'wc_x wc_y wc_z'
    wc_x = disp_x
    wc_y = disp_y
    wc_z = disp_z
    base_name = coupled
    alpha = 0.1
  [../]
  [./x_moment]
    type = RedbackDynamicMomentBalancing
    variable = wc_x
    component = 0
  [../]
  [./y_moment]
    type = RedbackDynamicMomentBalancing
    variable = wc_y
    component = 1
    alpha = 0.1
  [../]
  [./z_moment]
    type = RedbackDynamicMomentBalancing
    variable = wc_z
    component = 2
  [../]
  [./dT_dt]
    type = TimeDerivative
    variable = temperature
  [../]
  [./T_diff]
    type = RedbackThermalDiffusion
    variable = temperature
  [../]
  [./dissip]
    type = RedbackMechDissip
    variable = temperature
  [../]
  [./dp_dt]
    type = TimeDerivative
    variable = pressure
  [../]
  [./p_diff]
    type = RedbackMassDiffusion
    variable = pressure
  [../]
  [./thermal_press]
    type = RedbackThermalPressurization
    variable = pressure
    temperature = temperature
  [../]
[]

[AuxKernels]
  [./stress_22]
    type = RankTwoAux
    variable = stress_22
    rank_two_tensor = stress
    index_j = 1
    index_i = 1
  [../]
  [./epsilon_22]
    type = RankTwoAux
    variable = epsilon_22
    rank_two_tensor = elastic_strain
    index_j = 1
    index_i = 1
  [../]
  [./epsilon_11]
    type = RankTwoAux
    variable = epsilon_11
    rank_two_tensor = elastic_strain
    index_j = 0
    index_i = 0
  [../]
  [./plastic_strain]
    type = MaterialRealAux
    variable = plastic_strain
    property = eqv_plastic_strain
  [../]
  [./stress_invariant]
    type = MaterialRealAux
    variable = stress_invariant
    property = stress_invariant
  [../]
  [./ecroui_param]
    type = MaterialRealAux
    variable = ecroui
    property = hardening_variable
  [../]
  [./failure_surf]
    type = MaterialRealAux
    variable = failure
    property = failure_surface
  [../]
  [./lagrange_mult]
    type = MaterialRealAux
    variable = plastic_strain
    property = lagrange_multiplier
  [../]
  [./accel_x]
    type = NewmarkAccelAux
    variable = accel_x
    displacement = disp_x
    velocity = vel_x
    beta = 0.25
    execute_on = timestep_end
  [../]
  [./vel_x]
    type = NewmarkVelAux
    variable = vel_x
    acceleration = accel_x
    gamma = 0.5
    execute_on = timestep_end
  [../]
  [./accel_y]
    type = NewmarkAccelAux
    variable = accel_y
    displacement = disp_y
    velocity = vel_y
    beta = 0.25
    execute_on = timestep_end
  [../]
  [./vel_y]
    type = NewmarkVelAux
    variable = vel_y
    acceleration = accel_y
    gamma = 0.5
    execute_on = timestep_end
  [../]
  [./accel_z]
    type = NewmarkAccelAux
    variable = accel_z
    displacement = disp_z
    velocity = vel_z
    beta = 0.25
    execute_on = timestep_end
  [../]
  [./vel_z]
    type = NewmarkVelAux
    variable = vel_z
    acceleration = accel_z
    gamma = 0.5
    execute_on = timestep_end
  [../]
  [./accel_wc_x]
    type = NewmarkAccelAux
    variable = accel_wc_x
    displacement = wc_x
    velocity = vel_wc_x
    beta = 0.25
    execute_on = timestep_end
  [../]
  [./vel_wc_x]
    type = NewmarkVelAux
    variable = vel_wc_x
    acceleration = accel_wc_x
    gamma = 0.5
    execute_on = timestep_end
  [../]
  [./accel_wc_y]
    type = NewmarkAccelAux
    variable = accel_wc_y
    displacement = wc_y
    velocity = vel_wc_y
    beta = 0.25
    execute_on = timestep_end
  [../]
  [./vel_wc_y]
    type = NewmarkVelAux
    variable = vel_wc_y
    acceleration = accel_wc_y
    gamma = 0.5
    execute_on = timestep_end
  [../]
  [./accel_wc_z]
    type = NewmarkAccelAux
    variable = accel_wc_z
    displacement = wc_z
    velocity = vel_wc_z
    beta = 0.25
    execute_on = timestep_end
  [../]
  [./vel_wc_z]
    type = NewmarkVelAux
    variable = vel_wc_z
    acceleration = accel_wc_z
    gamma = 0.5
    execute_on = timestep_end
  [../]
  [./plastic_xx]
    type = RankTwoAux
    variable = plastic_11
    rank_two_tensor = plastic_strain
    index_j = 0
    index_i = 0
  [../]
  [./plastic_yy]
    type = RankTwoAux
    variable = plastic_22
    rank_two_tensor = plastic_strain
    index_j = 1
    index_i = 1
  [../]
  [./plastic_xy]
    type = RankTwoAux
    variable = plastic_12
    rank_two_tensor = plastic_strain
    index_j = 1
    index_i = 0
  [../]
  [./antisymmetric_strain]
    type = RankTwoAux
    variable = macro_rot
    rank_two_tensor = macro_rotation
    index_j = 0
    index_i = 1
  [../]
  [./stress_11]
    type = RankTwoAux
    variable = stress_11
    rank_two_tensor = stress
    index_j = 0
    index_i = 0
  [../]
  [./stress_12]
    type = RankTwoAux
    variable = stress_12
    rank_two_tensor = stress
    index_j = 1
    index_i = 0
  [../]
  [./plastic_curv_32]
    type = RankTwoAux
    variable = plastic_cur_32
    rank_two_tensor = plastic_curvature
    index_j = 1
    index_i = 2
  [../]
[]

[BCs]
  # following is natural BC
  active = 'Periodic uy_bottom ux_imposed_top confining_stress wcx_equals_zero_on_top ux_zero_bottom wc_x_bottom uz_bottom wc_y_bottom'
  [./Periodic]
    [./xperiodic]
      auto_direction = x
      variable = 'disp_x disp_y disp_z wc_x wc_y wc_z temperature pressure'
    [../]
    [./zperiodic]
      auto_direction = z
      variable = 'disp_x disp_y disp_z wc_x wc_y wc_z temperature pressure'
    [../]
    [./wcz_periodic]
      variable = wc_z
      auto_direction = y
    [../]
  [../]
  [./wcx_equals_zero_on_top]
    type = DirichletBC
    variable = wc_x
    boundary = top
    value = 0
  [../]
  [./wcy_equals_zero_on_top]
    type = DirichletBC
    variable = wc_y
    boundary = top
    value = 0
  [../]
  [./uy_bottom]
    type = DirichletBC
    variable = disp_y
    boundary = bottom
    value = 0.0
  [../]
  [./uz_bottom]
    type = DirichletBC
    variable = disp_z
    boundary = bottom
    value = 0.0
  [../]
  [./wc_x_bottom]
    type = DirichletBC
    variable = wc_x
    boundary = bottom
    value = 0.0
  [../]
  [./wc_y_bottom]
    type = DirichletBC
    variable = wc_y
    boundary = bottom
    value = 0.0
  [../]
  [./ux_zero_bottom]
    type = FunctionDirichletBC
    variable = disp_x
    boundary = bottom
    function = ramp_bottom
  [../]
  [./wc_z_rotationBC]
    type = RedbackRotationBC
    variable = wc_z
    boundary = bottom
    dir1 = 1
    antisymmetric_strain_ij = antisymmetric_strain_ij
    some_var_1 = disp_x
    some_var_2 = disp_y
    grad_ux = _grad_ux
  [../]
  [./dux_top]
    type = NeumannBC
    variable = disp_z
    boundary = top
  [../]
  [./wcz_imposed_top]
    type = DirichletBC
    variable = wc_z
    boundary = top
    value = 0.0
  [../]
  [./ux_imposed_top]
    type = FunctionDirichletBC
    variable = disp_x
    boundary = top
    function = ramp_top
  [../]
  [./wc_z_bottom_zero]
    type = DirichletBC
    variable = wc_z
    boundary = bottom
    value = 0
  [../]
  [./Rotation_wc_z_BC]
    type = PostprocessorDirichletBC
    variable = wc_z
    boundary = bottom
    postprocessor = antisymmetric_pp
  [../]
  [./T_bottom]
    type = DirichletBC
    variable = temperature
    boundary = bottom
    value = 0
  [../]
  [./T_top]
    type = DirichletBC
    variable = temperature
    boundary = top
    value = 0
  [../]
  [./Rotation_wc_z_TC]
    type = PostprocessorDirichletBC
    variable = wc_z
    boundary = top
    postprocessor = antisymmetric_2
  [../]
  [./delta_T_centre]
    type = PointValue
    variable = delta_temp
    point = '0 0.5 0'
  [../]
  [./confining_stress]
    type = FunctionNeumannBC
    variable = disp_y
    boundary = top
    function = tangent_hyperbolic
  [../]
[]

[Materials]
  active = 'Redbackcosserat redback_mat density'
  [./cosserat]
    type = CosseratLinearElasticMaterial
    block = 0
    B_ijkl = 40
    C_ijkl = '5 10 5'
    fill_method = general_isotropic
  [../]
  [./Redbackcosserat]
    type = RedbackMechMaterialHO
    block = 0
    B_ijkl = '0.0 0.01 0.01'
    C_ijkl = '66.66666 50 25'
    fill_method = general_isotropic
    poisson_ratio = -9999
    youngs_modulus = -9999
    damage_method = BreakageMechanics
    cohesion = 0.01
    friction_coefficient = -0.5
    hardening_mech_modulus = 0.01
  [../]
  [./redback_mat]
    type = RedbackMaterial
    block = 0
    solid_thermal_expansion = 1e-2
    Kc = 1
    ar_F = 2
    mu = 1e-3
    ar_R = 1
    ar = 1
    da_exo = 1
    phi0 = 0.1
    Aphi = 1
    eta2 = 1e-3
    ref_lewis_nb = 0.1
    gr = 0.17857
    pressurization_coefficient = 1
  [../]
  [./density]
    type = GenericConstantMaterial
    block = 0
    prop_names = density
    prop_values = 2.5E-6
  [../]
[]

[Preconditioning]
  active = 'andy'
  [./andy]
    type = SMP
    full = true
    petsc_options_iname = '-ksp_type -pc_type    -snes_atol -snes_rtol -snes_max_it -ksp_atol -ksp_rtol'
    petsc_options_value = 'gmres          bjacobi     1E-6           1E-8          20                1E-8      1E-6 '
    line_search = none
  [../]
  [./debug_jacob]
    type = FDP
    full = true
  [../]
  [./default]
    type = SMP
    solve_type = NEWTON
    line_search = basic
  [../]
[]

[Executioner]
  type = Transient
  dt = 0.001
  l_max_its = 100
  solve_type = Newton
  num_steps = 2000
[]

[Outputs]
  execute_on = 'timestep_end initial'
  exodus = true
  file_base = shear_dynamic_HO
  print_linear_residuals = false
[]

