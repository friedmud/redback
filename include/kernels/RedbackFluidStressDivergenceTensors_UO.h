#ifndef RedbackFluidStressDivergenceTensors_UO_H
#define RedbackFluidStressDivergenceTensors_UO_H

#include "Kernel.h"
//#include "RankFourTensor.h"
#include "RankTwoTensor.h"

#include "RedbackElementParameters.h"

// Forward Declarations
class RedbackFluidStressDivergenceTensors_UO;
// class RankFourTensor;
class RankTwoTensor;

template <>
InputParameters validParams<RedbackFluidStressDivergenceTensors_UO>();

/**
 * RedbackFluidStressDivergenceTensors_UO mostly copies from StressDivergence.  There are small changes to use
 * RankFourTensor and RankTwoTensors instead of SymmElasticityTensors and SymmTensors.  This is done
 * to allow for more mathematical transparency.
 */
class RedbackFluidStressDivergenceTensors_UO : public Kernel
{
public:
  RedbackFluidStressDivergenceTensors_UO(const InputParameters & parameters);

protected:
  virtual Real computeQpResidual();
  virtual Real computeQpJacobian();
  virtual Real computeQpOffDiagJacobian(unsigned int jvar);

  // VariableValue & _pore_pres;
  const VariableGradient & _grad_pore_pressure;
  RealVectorValue _fluid_stress_row;

  const MaterialProperty<RankTwoTensor> & _fluid_stress;
  // const MaterialProperty<RankFourTensor> & _Jacobian_fluid_mult;

  const unsigned int _component;

  const MaterialProperty<Real> & _fluid_density;
  //const MaterialProperty<Real> & _reynolds_number;
  const MaterialProperty<Real> & _viscosity_ratio;

private:
  // const bool _xdisp_coupled;
  // const bool _ydisp_coupled;
  // const bool _zdisp_coupled;
  // const bool _temp_coupled;

  const unsigned int _vel_fluid_x_var;
  const unsigned int _vel_fluid_y_var;
  const unsigned int _vel_fluid_z_var;
  // const unsigned int _temp_var;
  const unsigned int _porepressure_var;


  // the container that holds all of the redback material parameters
  // NB it is "common" in the sense that it is shared by more than one entity
  const RedbackElementParameters* _common_redback_material_parameters;

  const RedbackMaterialParameterUserObject*  _reynolds_number_uo;

  const MaterialProperty<RealVectorValue> & _gravity_term;
};

#endif // RedbackFluidStressDivergenceTensors_UO_H