
H
inputXPlaceholder*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙((
A
outputYPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0

(conv1/W/Initializer/random_uniform/shapeConst*
dtype0*%
valueB"            *
_class
loc:@conv1/W
o
&conv1/W/Initializer/random_uniform/minConst*
valueB
 *Đ?ž*
_class
loc:@conv1/W*
dtype0
o
&conv1/W/Initializer/random_uniform/maxConst*
valueB
 *Đ?>*
_class
loc:@conv1/W*
dtype0
ļ
0conv1/W/Initializer/random_uniform/RandomUniformRandomUniform(conv1/W/Initializer/random_uniform/shape*

seed *
T0*
_class
loc:@conv1/W*
dtype0*
seed2 
ĸ
&conv1/W/Initializer/random_uniform/subSub&conv1/W/Initializer/random_uniform/max&conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/W
Ŧ
&conv1/W/Initializer/random_uniform/mulMul0conv1/W/Initializer/random_uniform/RandomUniform&conv1/W/Initializer/random_uniform/sub*
T0*
_class
loc:@conv1/W

"conv1/W/Initializer/random_uniformAdd&conv1/W/Initializer/random_uniform/mul&conv1/W/Initializer/random_uniform/min*
T0*
_class
loc:@conv1/W

conv1/W
VariableV2*
shared_name *
_class
loc:@conv1/W*
dtype0*
	container *
shape:

conv1/W/AssignAssignconv1/W"conv1/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
F
conv1/W/readIdentityconv1/W*
T0*
_class
loc:@conv1/W
<
conv1/zerosConst*
valueB*    *
dtype0
W
conv1/b
VariableV2*
dtype0*
	container *
shape:*
shared_name 
|
conv1/b/AssignAssignconv1/bconv1/zeros*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
F
conv1/b/readIdentityconv1/b*
T0*
_class
loc:@conv1/b

conv1/Conv2DConv2DinputXconv1/W/read*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
T
conv1/BiasAddBiasAddconv1/Conv2Dconv1/b/read*
T0*
data_formatNHWC
*

conv1/ReluReluconv1/BiasAdd*
T0

0branch1/conv2/W/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@branch1/conv2/W*
dtype0

.branch1/conv2/W/Initializer/random_uniform/minConst*
valueB
 *ī[ņŊ*"
_class
loc:@branch1/conv2/W*
dtype0

.branch1/conv2/W/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *ī[ņ=*"
_class
loc:@branch1/conv2/W
Î
8branch1/conv2/W/Initializer/random_uniform/RandomUniformRandomUniform0branch1/conv2/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@branch1/conv2/W
Â
.branch1/conv2/W/Initializer/random_uniform/subSub.branch1/conv2/W/Initializer/random_uniform/max.branch1/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch1/conv2/W
Ė
.branch1/conv2/W/Initializer/random_uniform/mulMul8branch1/conv2/W/Initializer/random_uniform/RandomUniform.branch1/conv2/W/Initializer/random_uniform/sub*
T0*"
_class
loc:@branch1/conv2/W
ž
*branch1/conv2/W/Initializer/random_uniformAdd.branch1/conv2/W/Initializer/random_uniform/mul.branch1/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch1/conv2/W

branch1/conv2/W
VariableV2*"
_class
loc:@branch1/conv2/W*
dtype0*
	container *
shape: *
shared_name 
ŗ
branch1/conv2/W/AssignAssignbranch1/conv2/W*branch1/conv2/W/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
^
branch1/conv2/W/readIdentitybranch1/conv2/W*
T0*"
_class
loc:@branch1/conv2/W
D
branch1/conv2/zerosConst*
valueB *    *
dtype0
_
branch1/conv2/b
VariableV2*
dtype0*
	container *
shape: *
shared_name 

branch1/conv2/b/AssignAssignbranch1/conv2/bbranch1/conv2/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
^
branch1/conv2/b/readIdentitybranch1/conv2/b*
T0*"
_class
loc:@branch1/conv2/b
Ą
branch1/conv2/Conv2DConv2D
conv1/Relubranch1/conv2/W/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
l
branch1/conv2/BiasAddBiasAddbranch1/conv2/Conv2Dbranch1/conv2/b/read*
T0*
data_formatNHWC
:
branch1/conv2/ReluRelubranch1/conv2/BiasAdd*
T0

branch1/MaxPoolMaxPoolbranch1/conv2/Relu*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*
T0

0branch2/conv2/W/Initializer/random_uniform/shapeConst*%
valueB"             *"
_class
loc:@branch2/conv2/W*
dtype0

.branch2/conv2/W/Initializer/random_uniform/minConst*
dtype0*
valueB
 *ī[ņŊ*"
_class
loc:@branch2/conv2/W

.branch2/conv2/W/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *ī[ņ=*"
_class
loc:@branch2/conv2/W
Î
8branch2/conv2/W/Initializer/random_uniform/RandomUniformRandomUniform0branch2/conv2/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*"
_class
loc:@branch2/conv2/W
Â
.branch2/conv2/W/Initializer/random_uniform/subSub.branch2/conv2/W/Initializer/random_uniform/max.branch2/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch2/conv2/W
Ė
.branch2/conv2/W/Initializer/random_uniform/mulMul8branch2/conv2/W/Initializer/random_uniform/RandomUniform.branch2/conv2/W/Initializer/random_uniform/sub*
T0*"
_class
loc:@branch2/conv2/W
ž
*branch2/conv2/W/Initializer/random_uniformAdd.branch2/conv2/W/Initializer/random_uniform/mul.branch2/conv2/W/Initializer/random_uniform/min*
T0*"
_class
loc:@branch2/conv2/W

branch2/conv2/W
VariableV2*
shared_name *"
_class
loc:@branch2/conv2/W*
dtype0*
	container *
shape: 
ŗ
branch2/conv2/W/AssignAssignbranch2/conv2/W*branch2/conv2/W/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
^
branch2/conv2/W/readIdentitybranch2/conv2/W*
T0*"
_class
loc:@branch2/conv2/W
D
branch2/conv2/zerosConst*
valueB *    *
dtype0
_
branch2/conv2/b
VariableV2*
shared_name *
dtype0*
	container *
shape: 

branch2/conv2/b/AssignAssignbranch2/conv2/bbranch2/conv2/zeros*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(*
use_locking(
^
branch2/conv2/b/readIdentitybranch2/conv2/b*
T0*"
_class
loc:@branch2/conv2/b
Ą
branch2/conv2/Conv2DConv2D
conv1/Relubranch2/conv2/W/read*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
l
branch2/conv2/BiasAddBiasAddbranch2/conv2/Conv2Dbranch2/conv2/b/read*
T0*
data_formatNHWC
:
branch2/conv2/ReluRelubranch2/conv2/BiasAdd*
T0

branch2/MaxPoolMaxPoolbranch2/conv2/Relu*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
5
concat/axisConst*
value	B :*
dtype0
_
concatConcatV2branch1/MaxPoolbranch2/MaxPoolconcat/axis*
N*

Tidx0*
T0
B
Reshape/shapeConst*
valueB"˙˙˙˙ Q  *
dtype0
@
ReshapeReshapeconcatReshape/shape*
T0*
Tshape0
y
(dense/W/Initializer/random_uniform/shapeConst*
dtype0*
valueB" Q     *
_class
loc:@dense/W
o
&dense/W/Initializer/random_uniform/minConst*
valueB
 *Nŧ*
_class
loc:@dense/W*
dtype0
o
&dense/W/Initializer/random_uniform/maxConst*
valueB
 *N<*
_class
loc:@dense/W*
dtype0
ļ
0dense/W/Initializer/random_uniform/RandomUniformRandomUniform(dense/W/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/W
ĸ
&dense/W/Initializer/random_uniform/subSub&dense/W/Initializer/random_uniform/max&dense/W/Initializer/random_uniform/min*
T0*
_class
loc:@dense/W
Ŧ
&dense/W/Initializer/random_uniform/mulMul0dense/W/Initializer/random_uniform/RandomUniform&dense/W/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/W

"dense/W/Initializer/random_uniformAdd&dense/W/Initializer/random_uniform/mul&dense/W/Initializer/random_uniform/min*
T0*
_class
loc:@dense/W
y
dense/W
VariableV2*
_class
loc:@dense/W*
dtype0*
	container *
shape:
ĸ*
shared_name 

dense/W/AssignAssigndense/W"dense/W/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
F
dense/W/readIdentitydense/W*
T0*
_class
loc:@dense/W
<
dense/zerosConst*
valueB*    *
dtype0
W
dense/b
VariableV2*
dtype0*
	container *
shape:*
shared_name 
|
dense/b/AssignAssigndense/bdense/zeros*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
F
dense/b/readIdentitydense/b*
T0*
_class
loc:@dense/b
\
dense/MatMulMatMulReshapedense/W/read*
T0*
transpose_a( *
transpose_b( 
5
	dense/addAdddense/MatMuldense/b/read*
T0
)

predictionSoftmax	dense/add*
T0
.
RankConst*
dtype0*
value	B :
2
ShapeShape	dense/add*
T0*
out_type0
0
Rank_1Const*
value	B :*
dtype0
4
Shape_1Shape	dense/add*
T0*
out_type0
/
Sub/yConst*
value	B :*
dtype0
"
SubSubRank_1Sub/y*
T0
6
Slice/beginPackSub*
N*
T0*

axis 
8

Slice/sizeConst*
dtype0*
valueB:
F
SliceSliceShape_1Slice/begin
Slice/size*
Index0*
T0
H
concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
7
concat_1/axisConst*
value	B : *
dtype0
[
concat_1ConcatV2concat_1/values_0Sliceconcat_1/axis*
N*

Tidx0*
T0
@
	Reshape_1Reshape	dense/addconcat_1*
T0*
Tshape0
0
Rank_2Const*
value	B :*
dtype0
2
Shape_2ShapeoutputY*
T0*
out_type0
1
Sub_1/yConst*
dtype0*
value	B :
&
Sub_1SubRank_2Sub_1/y*
T0
:
Slice_1/beginPackSub_1*
T0*

axis *
N
:
Slice_1/sizeConst*
valueB:*
dtype0
L
Slice_1SliceShape_2Slice_1/beginSlice_1/size*
Index0*
T0
H
concat_2/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
7
concat_2/axisConst*
value	B : *
dtype0
]
concat_2ConcatV2concat_2/values_0Slice_1concat_2/axis*
T0*
N*

Tidx0
>
	Reshape_2ReshapeoutputYconcat_2*
T0*
Tshape0
]
SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogits	Reshape_1	Reshape_2*
T0
1
Sub_2/yConst*
value	B :*
dtype0
$
Sub_2SubRankSub_2/y*
T0
;
Slice_2/beginConst*
valueB: *
dtype0
9
Slice_2/sizePackSub_2*
N*
T0*

axis 
J
Slice_2SliceShapeSlice_2/beginSlice_2/size*
Index0*
T0
S
	Reshape_3ReshapeSoftmaxCrossEntropyWithLogitsSlice_2*
T0*
Tshape0
3
ConstConst*
valueB: *
dtype0
D
MeanMean	Reshape_3Const*
	keep_dims( *

Tidx0*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
F
gradients/Mean_grad/ShapeShape	Reshape_3*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
H
gradients/Mean_grad/Shape_1Shape	Reshape_3*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
dtype0*
valueB 
w
gradients/Mean_grad/ConstConst*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
valueB: *
dtype0
Ž
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
	keep_dims( *

Tidx0
y
gradients/Mean_grad/Const_1Const*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
valueB: *
dtype0
˛
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
w
gradients/Mean_grad/Maximum/yConst*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
_
gradients/Reshape_3_grad/ShapeShapeSoftmaxCrossEntropyWithLogits*
T0*
out_type0

 gradients/Reshape_3_grad/ReshapeReshapegradients/Mean_grad/truedivgradients/Reshape_3_grad/Shape*
T0*
Tshape0
K
gradients/zeros_like	ZerosLikeSoftmaxCrossEntropyWithLogits:1*
T0
n
;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
š
7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims gradients/Reshape_3_grad/Reshape;gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0

0gradients/SoftmaxCrossEntropyWithLogits_grad/mulMul7gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDimsSoftmaxCrossEntropyWithLogits:1*
T0
K
gradients/Reshape_1_grad/ShapeShape	dense/add*
T0*
out_type0

 gradients/Reshape_1_grad/ReshapeReshape0gradients/SoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_1_grad/Shape*
T0*
Tshape0
N
gradients/dense/add_grad/ShapeShapedense/MatMul*
T0*
out_type0
N
 gradients/dense/add_grad/Shape_1Const*
dtype0*
valueB:

.gradients/dense/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/dense/add_grad/Shape gradients/dense/add_grad/Shape_1*
T0

gradients/dense/add_grad/SumSum gradients/Reshape_1_grad/Reshape.gradients/dense/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

 gradients/dense/add_grad/ReshapeReshapegradients/dense/add_grad/Sumgradients/dense/add_grad/Shape*
T0*
Tshape0

gradients/dense/add_grad/Sum_1Sum gradients/Reshape_1_grad/Reshape0gradients/dense/add_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

"gradients/dense/add_grad/Reshape_1Reshapegradients/dense/add_grad/Sum_1 gradients/dense/add_grad/Shape_1*
T0*
Tshape0
y
)gradients/dense/add_grad/tuple/group_depsNoOp!^gradients/dense/add_grad/Reshape#^gradients/dense/add_grad/Reshape_1
É
1gradients/dense/add_grad/tuple/control_dependencyIdentity gradients/dense/add_grad/Reshape*^gradients/dense/add_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/dense/add_grad/Reshape
Ī
3gradients/dense/add_grad/tuple/control_dependency_1Identity"gradients/dense/add_grad/Reshape_1*^gradients/dense/add_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/add_grad/Reshape_1

"gradients/dense/MatMul_grad/MatMulMatMul1gradients/dense/add_grad/tuple/control_dependencydense/W/read*
transpose_b(*
T0*
transpose_a( 

$gradients/dense/MatMul_grad/MatMul_1MatMulReshape1gradients/dense/add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ķ
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ų
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
F
gradients/Reshape_grad/ShapeShapeconcat*
T0*
out_type0

gradients/Reshape_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0
D
gradients/concat_grad/RankConst*
value	B :*
dtype0
W
gradients/concat_grad/modFloorModconcat/axisgradients/concat_grad/Rank*
T0
N
gradients/concat_grad/ShapeShapebranch1/MaxPool*
T0*
out_type0
j
gradients/concat_grad/ShapeNShapeNbranch1/MaxPoolbranch2/MaxPool*
T0*
out_type0*
N

"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/modgradients/concat_grad/ShapeNgradients/concat_grad/ShapeN:1*
N

gradients/concat_grad/SliceSlicegradients/Reshape_grad/Reshape"gradients/concat_grad/ConcatOffsetgradients/concat_grad/ShapeN*
Index0*
T0
ĸ
gradients/concat_grad/Slice_1Slicegradients/Reshape_grad/Reshape$gradients/concat_grad/ConcatOffset:1gradients/concat_grad/ShapeN:1*
Index0*
T0
l
&gradients/concat_grad/tuple/group_depsNoOp^gradients/concat_grad/Slice^gradients/concat_grad/Slice_1
š
.gradients/concat_grad/tuple/control_dependencyIdentitygradients/concat_grad/Slice'^gradients/concat_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/concat_grad/Slice
ŋ
0gradients/concat_grad/tuple/control_dependency_1Identitygradients/concat_grad/Slice_1'^gradients/concat_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_grad/Slice_1
ę
*gradients/branch1/MaxPool_grad/MaxPoolGradMaxPoolGradbranch1/conv2/Relubranch1/MaxPool.gradients/concat_grad/tuple/control_dependency*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
ė
*gradients/branch2/MaxPool_grad/MaxPoolGradMaxPoolGradbranch2/conv2/Relubranch2/MaxPool0gradients/concat_grad/tuple/control_dependency_1*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC

*gradients/branch1/conv2/Relu_grad/ReluGradReluGrad*gradients/branch1/MaxPool_grad/MaxPoolGradbranch1/conv2/Relu*
T0

*gradients/branch2/conv2/Relu_grad/ReluGradReluGrad*gradients/branch2/MaxPool_grad/MaxPoolGradbranch2/conv2/Relu*
T0

0gradients/branch1/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/branch1/conv2/Relu_grad/ReluGrad*
T0*
data_formatNHWC

5gradients/branch1/conv2/BiasAdd_grad/tuple/group_depsNoOp+^gradients/branch1/conv2/Relu_grad/ReluGrad1^gradients/branch1/conv2/BiasAdd_grad/BiasAddGrad
õ
=gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/branch1/conv2/Relu_grad/ReluGrad6^gradients/branch1/conv2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/branch1/conv2/Relu_grad/ReluGrad

?gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/branch1/conv2/BiasAdd_grad/BiasAddGrad6^gradients/branch1/conv2/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/branch1/conv2/BiasAdd_grad/BiasAddGrad

0gradients/branch2/conv2/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients/branch2/conv2/Relu_grad/ReluGrad*
data_formatNHWC*
T0

5gradients/branch2/conv2/BiasAdd_grad/tuple/group_depsNoOp+^gradients/branch2/conv2/Relu_grad/ReluGrad1^gradients/branch2/conv2/BiasAdd_grad/BiasAddGrad
õ
=gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependencyIdentity*gradients/branch2/conv2/Relu_grad/ReluGrad6^gradients/branch2/conv2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/branch2/conv2/Relu_grad/ReluGrad

?gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency_1Identity0gradients/branch2/conv2/BiasAdd_grad/BiasAddGrad6^gradients/branch2/conv2/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/branch2/conv2/BiasAdd_grad/BiasAddGrad
x
*gradients/branch1/conv2/Conv2D_grad/ShapeNShapeN
conv1/Relubranch1/conv2/W/read*
N*
T0*
out_type0
°
7gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients/branch1/conv2/Conv2D_grad/ShapeNbranch1/conv2/W/read=gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0
Ē
8gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter
conv1/Relu,gradients/branch1/conv2/Conv2D_grad/ShapeN:1=gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ą
4gradients/branch1/conv2/Conv2D_grad/tuple/group_depsNoOp8^gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput9^gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilter

<gradients/branch1/conv2/Conv2D_grad/tuple/control_dependencyIdentity7gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput5^gradients/branch1/conv2/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput

>gradients/branch1/conv2/Conv2D_grad/tuple/control_dependency_1Identity8gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilter5^gradients/branch1/conv2/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropFilter
x
*gradients/branch2/conv2/Conv2D_grad/ShapeNShapeN
conv1/Relubranch2/conv2/W/read*
N*
T0*
out_type0
°
7gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients/branch2/conv2/Conv2D_grad/ShapeNbranch2/conv2/W/read=gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ē
8gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter
conv1/Relu,gradients/branch2/conv2/Conv2D_grad/ShapeN:1=gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ą
4gradients/branch2/conv2/Conv2D_grad/tuple/group_depsNoOp8^gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInput9^gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilter

<gradients/branch2/conv2/Conv2D_grad/tuple/control_dependencyIdentity7gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInput5^gradients/branch2/conv2/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropInput

>gradients/branch2/conv2/Conv2D_grad/tuple/control_dependency_1Identity8gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilter5^gradients/branch2/conv2/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/branch2/conv2/Conv2D_grad/Conv2DBackpropFilter
đ
gradients/AddNAddN<gradients/branch1/conv2/Conv2D_grad/tuple/control_dependency<gradients/branch2/conv2/Conv2D_grad/tuple/control_dependency*
T0*J
_class@
><loc:@gradients/branch1/conv2/Conv2D_grad/Conv2DBackpropInput*
N
S
"gradients/conv1/Relu_grad/ReluGradReluGradgradients/AddN
conv1/Relu*
T0
{
(gradients/conv1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/conv1/Relu_grad/ReluGrad*
T0*
data_formatNHWC

-gradients/conv1/BiasAdd_grad/tuple/group_depsNoOp#^gradients/conv1/Relu_grad/ReluGrad)^gradients/conv1/BiasAdd_grad/BiasAddGrad
Õ
5gradients/conv1/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/conv1/Relu_grad/ReluGrad.^gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/conv1/Relu_grad/ReluGrad
ã
7gradients/conv1/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/conv1/BiasAdd_grad/BiasAddGrad.^gradients/conv1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv1/BiasAdd_grad/BiasAddGrad
d
"gradients/conv1/Conv2D_grad/ShapeNShapeNinputXconv1/W/read*
T0*
out_type0*
N

/gradients/conv1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput"gradients/conv1/Conv2D_grad/ShapeNconv1/W/read5gradients/conv1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
T0

0gradients/conv1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterinputX$gradients/conv1/Conv2D_grad/ShapeN:15gradients/conv1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

,gradients/conv1/Conv2D_grad/tuple/group_depsNoOp0^gradients/conv1/Conv2D_grad/Conv2DBackpropInput1^gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
í
4gradients/conv1/Conv2D_grad/tuple/control_dependencyIdentity/gradients/conv1/Conv2D_grad/Conv2DBackpropInput-^gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropInput
ņ
6gradients/conv1/Conv2D_grad/tuple/control_dependency_1Identity0gradients/conv1/Conv2D_grad/Conv2DBackpropFilter-^gradients/conv1/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv1/Conv2D_grad/Conv2DBackpropFilter
j
beta1_power/initial_valueConst*
dtype0*"
_class
loc:@branch1/conv2/W*
valueB
 *fff?
{
beta1_power
VariableV2*"
_class
loc:@branch1/conv2/W*
dtype0*
	container *
shape: *
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W
V
beta1_power/readIdentitybeta1_power*
T0*"
_class
loc:@branch1/conv2/W
j
beta2_power/initial_valueConst*"
_class
loc:@branch1/conv2/W*
valueB
 *wž?*
dtype0
{
beta2_power
VariableV2*
shape: *
shared_name *"
_class
loc:@branch1/conv2/W*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W
V
beta2_power/readIdentitybeta2_power*
T0*"
_class
loc:@branch1/conv2/W
w
conv1/W/Adam/Initializer/zerosConst*%
valueB*    *
_class
loc:@conv1/W*
dtype0

conv1/W/Adam
VariableV2*
_class
loc:@conv1/W*
dtype0*
	container *
shape:*
shared_name 

conv1/W/Adam/AssignAssignconv1/W/Adamconv1/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
P
conv1/W/Adam/readIdentityconv1/W/Adam*
T0*
_class
loc:@conv1/W
y
 conv1/W/Adam_1/Initializer/zerosConst*
dtype0*%
valueB*    *
_class
loc:@conv1/W

conv1/W/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@conv1/W

conv1/W/Adam_1/AssignAssignconv1/W/Adam_1 conv1/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
T
conv1/W/Adam_1/readIdentityconv1/W/Adam_1*
T0*
_class
loc:@conv1/W
k
conv1/b/Adam/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@conv1/b
x
conv1/b/Adam
VariableV2*
shared_name *
_class
loc:@conv1/b*
dtype0*
	container *
shape:

conv1/b/Adam/AssignAssignconv1/b/Adamconv1/b/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
P
conv1/b/Adam/readIdentityconv1/b/Adam*
T0*
_class
loc:@conv1/b
m
 conv1/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@conv1/b*
dtype0
z
conv1/b/Adam_1
VariableV2*
shared_name *
_class
loc:@conv1/b*
dtype0*
	container *
shape:

conv1/b/Adam_1/AssignAssignconv1/b/Adam_1 conv1/b/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
T
conv1/b/Adam_1/readIdentityconv1/b/Adam_1*
T0*
_class
loc:@conv1/b

&branch1/conv2/W/Adam/Initializer/zerosConst*
dtype0*%
valueB *    *"
_class
loc:@branch1/conv2/W

branch1/conv2/W/Adam
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch1/conv2/W
š
branch1/conv2/W/Adam/AssignAssignbranch1/conv2/W/Adam&branch1/conv2/W/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
h
branch1/conv2/W/Adam/readIdentitybranch1/conv2/W/Adam*
T0*"
_class
loc:@branch1/conv2/W

(branch1/conv2/W/Adam_1/Initializer/zerosConst*%
valueB *    *"
_class
loc:@branch1/conv2/W*
dtype0

branch1/conv2/W/Adam_1
VariableV2*
shared_name *"
_class
loc:@branch1/conv2/W*
dtype0*
	container *
shape: 
ŋ
branch1/conv2/W/Adam_1/AssignAssignbranch1/conv2/W/Adam_1(branch1/conv2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
l
branch1/conv2/W/Adam_1/readIdentitybranch1/conv2/W/Adam_1*
T0*"
_class
loc:@branch1/conv2/W
{
&branch1/conv2/b/Adam/Initializer/zerosConst*
dtype0*
valueB *    *"
_class
loc:@branch1/conv2/b

branch1/conv2/b/Adam
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch1/conv2/b
š
branch1/conv2/b/Adam/AssignAssignbranch1/conv2/b/Adam&branch1/conv2/b/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
h
branch1/conv2/b/Adam/readIdentitybranch1/conv2/b/Adam*
T0*"
_class
loc:@branch1/conv2/b
}
(branch1/conv2/b/Adam_1/Initializer/zerosConst*
valueB *    *"
_class
loc:@branch1/conv2/b*
dtype0

branch1/conv2/b/Adam_1
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch1/conv2/b
ŋ
branch1/conv2/b/Adam_1/AssignAssignbranch1/conv2/b/Adam_1(branch1/conv2/b/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b
l
branch1/conv2/b/Adam_1/readIdentitybranch1/conv2/b/Adam_1*
T0*"
_class
loc:@branch1/conv2/b

&branch2/conv2/W/Adam/Initializer/zerosConst*%
valueB *    *"
_class
loc:@branch2/conv2/W*
dtype0

branch2/conv2/W/Adam
VariableV2*
dtype0*
	container *
shape: *
shared_name *"
_class
loc:@branch2/conv2/W
š
branch2/conv2/W/Adam/AssignAssignbranch2/conv2/W/Adam&branch2/conv2/W/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
h
branch2/conv2/W/Adam/readIdentitybranch2/conv2/W/Adam*
T0*"
_class
loc:@branch2/conv2/W

(branch2/conv2/W/Adam_1/Initializer/zerosConst*%
valueB *    *"
_class
loc:@branch2/conv2/W*
dtype0

branch2/conv2/W/Adam_1
VariableV2*
shape: *
shared_name *"
_class
loc:@branch2/conv2/W*
dtype0*
	container 
ŋ
branch2/conv2/W/Adam_1/AssignAssignbranch2/conv2/W/Adam_1(branch2/conv2/W/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
l
branch2/conv2/W/Adam_1/readIdentitybranch2/conv2/W/Adam_1*
T0*"
_class
loc:@branch2/conv2/W
{
&branch2/conv2/b/Adam/Initializer/zerosConst*
valueB *    *"
_class
loc:@branch2/conv2/b*
dtype0

branch2/conv2/b/Adam
VariableV2*"
_class
loc:@branch2/conv2/b*
dtype0*
	container *
shape: *
shared_name 
š
branch2/conv2/b/Adam/AssignAssignbranch2/conv2/b/Adam&branch2/conv2/b/Adam/Initializer/zeros*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(*
use_locking(
h
branch2/conv2/b/Adam/readIdentitybranch2/conv2/b/Adam*
T0*"
_class
loc:@branch2/conv2/b
}
(branch2/conv2/b/Adam_1/Initializer/zerosConst*
dtype0*
valueB *    *"
_class
loc:@branch2/conv2/b

branch2/conv2/b/Adam_1
VariableV2*
shared_name *"
_class
loc:@branch2/conv2/b*
dtype0*
	container *
shape: 
ŋ
branch2/conv2/b/Adam_1/AssignAssignbranch2/conv2/b/Adam_1(branch2/conv2/b/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(
l
branch2/conv2/b/Adam_1/readIdentitybranch2/conv2/b/Adam_1*
T0*"
_class
loc:@branch2/conv2/b
q
dense/W/Adam/Initializer/zerosConst*
valueB
ĸ*    *
_class
loc:@dense/W*
dtype0
~
dense/W/Adam
VariableV2*
shape:
ĸ*
shared_name *
_class
loc:@dense/W*
dtype0*
	container 

dense/W/Adam/AssignAssigndense/W/Adamdense/W/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
P
dense/W/Adam/readIdentitydense/W/Adam*
T0*
_class
loc:@dense/W
s
 dense/W/Adam_1/Initializer/zerosConst*
valueB
ĸ*    *
_class
loc:@dense/W*
dtype0

dense/W/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/W*
dtype0*
	container *
shape:
ĸ

dense/W/Adam_1/AssignAssigndense/W/Adam_1 dense/W/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
T
dense/W/Adam_1/readIdentitydense/W/Adam_1*
T0*
_class
loc:@dense/W
k
dense/b/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/b*
dtype0
x
dense/b/Adam
VariableV2*
shared_name *
_class
loc:@dense/b*
dtype0*
	container *
shape:

dense/b/Adam/AssignAssigndense/b/Adamdense/b/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/b
P
dense/b/Adam/readIdentitydense/b/Adam*
T0*
_class
loc:@dense/b
m
 dense/b/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/b*
dtype0
z
dense/b/Adam_1
VariableV2*
_class
loc:@dense/b*
dtype0*
	container *
shape:*
shared_name 

dense/b/Adam_1/AssignAssigndense/b/Adam_1 dense/b/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
T
dense/b/Adam_1/readIdentitydense/b/Adam_1*
T0*
_class
loc:@dense/b
?
Adam/learning_rateConst*
valueB
 *Ĩē8*
dtype0
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *wž?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĖ+2*
dtype0
ŗ
Adam/update_conv1/W/ApplyAdam	ApplyAdamconv1/Wconv1/W/Adamconv1/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/conv1/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@conv1/W*
use_nesterov( 
´
Adam/update_conv1/b/ApplyAdam	ApplyAdamconv1/bconv1/b/Adamconv1/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@conv1/b*
use_nesterov( *
use_locking( 
ã
%Adam/update_branch1/conv2/W/ApplyAdam	ApplyAdambranch1/conv2/Wbranch1/conv2/W/Adambranch1/conv2/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon>gradients/branch1/conv2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@branch1/conv2/W*
use_nesterov( 
ä
%Adam/update_branch1/conv2/b/ApplyAdam	ApplyAdambranch1/conv2/bbranch1/conv2/b/Adambranch1/conv2/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/branch1/conv2/BiasAdd_grad/tuple/control_dependency_1*
T0*"
_class
loc:@branch1/conv2/b*
use_nesterov( *
use_locking( 
ã
%Adam/update_branch2/conv2/W/ApplyAdam	ApplyAdambranch2/conv2/Wbranch2/conv2/W/Adambranch2/conv2/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon>gradients/branch2/conv2/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@branch2/conv2/W*
use_nesterov( 
ä
%Adam/update_branch2/conv2/b/ApplyAdam	ApplyAdambranch2/conv2/bbranch2/conv2/b/Adambranch2/conv2/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon?gradients/branch2/conv2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@branch2/conv2/b
ŗ
Adam/update_dense/W/ApplyAdam	ApplyAdamdense/Wdense/W/Adamdense/W/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/W*
use_nesterov( 
°
Adam/update_dense/b/ApplyAdam	ApplyAdamdense/bdense/b/Adamdense/b/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/dense/add_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dense/b
ú
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_conv1/W/ApplyAdam^Adam/update_conv1/b/ApplyAdam&^Adam/update_branch1/conv2/W/ApplyAdam&^Adam/update_branch1/conv2/b/ApplyAdam&^Adam/update_branch2/conv2/W/ApplyAdam&^Adam/update_branch2/conv2/b/ApplyAdam^Adam/update_dense/W/ApplyAdam^Adam/update_dense/b/ApplyAdam*
T0*"
_class
loc:@branch1/conv2/W

Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
use_locking( *
T0*"
_class
loc:@branch1/conv2/W
ü

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_conv1/W/ApplyAdam^Adam/update_conv1/b/ApplyAdam&^Adam/update_branch1/conv2/W/ApplyAdam&^Adam/update_branch1/conv2/b/ApplyAdam&^Adam/update_branch2/conv2/W/ApplyAdam&^Adam/update_branch2/conv2/b/ApplyAdam^Adam/update_dense/W/ApplyAdam^Adam/update_dense/b/ApplyAdam*
T0*"
_class
loc:@branch1/conv2/W

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking( 
Ę
AdamNoOp^Adam/update_conv1/W/ApplyAdam^Adam/update_conv1/b/ApplyAdam&^Adam/update_branch1/conv2/W/ApplyAdam&^Adam/update_branch1/conv2/b/ApplyAdam&^Adam/update_branch2/conv2/W/ApplyAdam&^Adam/update_branch2/conv2/b/ApplyAdam^Adam/update_dense/W/ApplyAdam^Adam/update_dense/b/ApplyAdam^Adam/Assign^Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0
ø
save/SaveV2/tensor_namesConst*Į
valueŊBēBbeta1_powerBbeta2_powerBbranch1/conv2/WBbranch1/conv2/W/AdamBbranch1/conv2/W/Adam_1Bbranch1/conv2/bBbranch1/conv2/b/AdamBbranch1/conv2/b/Adam_1Bbranch2/conv2/WBbranch2/conv2/W/AdamBbranch2/conv2/W/Adam_1Bbranch2/conv2/bBbranch2/conv2/b/AdamBbranch2/conv2/b/Adam_1Bconv1/WBconv1/W/AdamBconv1/W/Adam_1Bconv1/bBconv1/b/AdamBconv1/b/Adam_1Bdense/WBdense/W/AdamBdense/W/Adam_1Bdense/bBdense/b/AdamBdense/b/Adam_1*
dtype0
{
save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ĩ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerbranch1/conv2/Wbranch1/conv2/W/Adambranch1/conv2/W/Adam_1branch1/conv2/bbranch1/conv2/b/Adambranch1/conv2/b/Adam_1branch2/conv2/Wbranch2/conv2/W/Adambranch2/conv2/W/Adam_1branch2/conv2/bbranch2/conv2/b/Adambranch2/conv2/b/Adam_1conv1/Wconv1/W/Adamconv1/W/Adam_1conv1/bconv1/b/Adamconv1/b/Adam_1dense/Wdense/W/Adamdense/W/Adam_1dense/bdense/b/Adamdense/b/Adam_1*(
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
S
save/RestoreV2/tensor_namesConst*
dtype0* 
valueBBbeta1_power
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
U
save/RestoreV2_1/tensor_namesConst* 
valueBBbeta2_power*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1Assignbeta2_powersave/RestoreV2_1*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking(
Y
save/RestoreV2_2/tensor_namesConst*$
valueBBbranch1/conv2/W*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2

save/Assign_2Assignbranch1/conv2/Wsave/RestoreV2_2*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(*
use_locking(
^
save/RestoreV2_3/tensor_namesConst*)
value BBbranch1/conv2/W/Adam*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2

save/Assign_3Assignbranch1/conv2/W/Adamsave/RestoreV2_3*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W*
validate_shape(
`
save/RestoreV2_4/tensor_namesConst*+
value"B Bbranch1/conv2/W/Adam_1*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2

save/Assign_4Assignbranch1/conv2/W/Adam_1save/RestoreV2_4*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/W
Y
save/RestoreV2_5/tensor_namesConst*$
valueBBbranch1/conv2/b*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2

save/Assign_5Assignbranch1/conv2/bsave/RestoreV2_5*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(
^
save/RestoreV2_6/tensor_namesConst*)
value BBbranch1/conv2/b/Adam*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6Assignbranch1/conv2/b/Adamsave/RestoreV2_6*
T0*"
_class
loc:@branch1/conv2/b*
validate_shape(*
use_locking(
`
save/RestoreV2_7/tensor_namesConst*+
value"B Bbranch1/conv2/b/Adam_1*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2

save/Assign_7Assignbranch1/conv2/b/Adam_1save/RestoreV2_7*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch1/conv2/b
Y
save/RestoreV2_8/tensor_namesConst*
dtype0*$
valueBBbranch2/conv2/W
N
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2

save/Assign_8Assignbranch2/conv2/Wsave/RestoreV2_8*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
^
save/RestoreV2_9/tensor_namesConst*
dtype0*)
value BBbranch2/conv2/W/Adam
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2

save/Assign_9Assignbranch2/conv2/W/Adamsave/RestoreV2_9*
validate_shape(*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W
a
save/RestoreV2_10/tensor_namesConst*+
value"B Bbranch2/conv2/W/Adam_1*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2

save/Assign_10Assignbranch2/conv2/W/Adam_1save/RestoreV2_10*
use_locking(*
T0*"
_class
loc:@branch2/conv2/W*
validate_shape(
Z
save/RestoreV2_11/tensor_namesConst*$
valueBBbranch2/conv2/b*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2

save/Assign_11Assignbranch2/conv2/bsave/RestoreV2_11*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(*
use_locking(
_
save/RestoreV2_12/tensor_namesConst*)
value BBbranch2/conv2/b/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12Assignbranch2/conv2/b/Adamsave/RestoreV2_12*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(
a
save/RestoreV2_13/tensor_namesConst*+
value"B Bbranch2/conv2/b/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13Assignbranch2/conv2/b/Adam_1save/RestoreV2_13*
use_locking(*
T0*"
_class
loc:@branch2/conv2/b*
validate_shape(
R
save/RestoreV2_14/tensor_namesConst*
valueBBconv1/W*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2

save/Assign_14Assignconv1/Wsave/RestoreV2_14*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
W
save/RestoreV2_15/tensor_namesConst*!
valueBBconv1/W/Adam*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15Assignconv1/W/Adamsave/RestoreV2_15*
use_locking(*
T0*
_class
loc:@conv1/W*
validate_shape(
Y
save/RestoreV2_16/tensor_namesConst*#
valueBBconv1/W/Adam_1*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2

save/Assign_16Assignconv1/W/Adam_1save/RestoreV2_16*
T0*
_class
loc:@conv1/W*
validate_shape(*
use_locking(
R
save/RestoreV2_17/tensor_namesConst*
valueBBconv1/b*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2

save/Assign_17Assignconv1/bsave/RestoreV2_17*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
W
save/RestoreV2_18/tensor_namesConst*!
valueBBconv1/b/Adam*
dtype0
O
"save/RestoreV2_18/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2

save/Assign_18Assignconv1/b/Adamsave/RestoreV2_18*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
Y
save/RestoreV2_19/tensor_namesConst*#
valueBBconv1/b/Adam_1*
dtype0
O
"save/RestoreV2_19/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2

save/Assign_19Assignconv1/b/Adam_1save/RestoreV2_19*
use_locking(*
T0*
_class
loc:@conv1/b*
validate_shape(
R
save/RestoreV2_20/tensor_namesConst*
valueBBdense/W*
dtype0
O
"save/RestoreV2_20/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2

save/Assign_20Assigndense/Wsave/RestoreV2_20*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/W
W
save/RestoreV2_21/tensor_namesConst*!
valueBBdense/W/Adam*
dtype0
O
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2

save/Assign_21Assigndense/W/Adamsave/RestoreV2_21*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
Y
save/RestoreV2_22/tensor_namesConst*#
valueBBdense/W/Adam_1*
dtype0
O
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B 

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2

save/Assign_22Assigndense/W/Adam_1save/RestoreV2_22*
use_locking(*
T0*
_class
loc:@dense/W*
validate_shape(
R
save/RestoreV2_23/tensor_namesConst*
valueBBdense/b*
dtype0
O
"save/RestoreV2_23/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2

save/Assign_23Assigndense/bsave/RestoreV2_23*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
W
save/RestoreV2_24/tensor_namesConst*!
valueBBdense/b/Adam*
dtype0
O
"save/RestoreV2_24/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2

save/Assign_24Assigndense/b/Adamsave/RestoreV2_24*
T0*
_class
loc:@dense/b*
validate_shape(*
use_locking(
Y
save/RestoreV2_25/tensor_namesConst*#
valueBBdense/b/Adam_1*
dtype0
O
"save/RestoreV2_25/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2

save/Assign_25Assigndense/b/Adam_1save/RestoreV2_25*
use_locking(*
T0*
_class
loc:@dense/b*
validate_shape(
Æ
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25

initNoOp^conv1/W/Assign^conv1/b/Assign^branch1/conv2/W/Assign^branch1/conv2/b/Assign^branch2/conv2/W/Assign^branch2/conv2/b/Assign^dense/W/Assign^dense/b/Assign^beta1_power/Assign^beta2_power/Assign^conv1/W/Adam/Assign^conv1/W/Adam_1/Assign^conv1/b/Adam/Assign^conv1/b/Adam_1/Assign^branch1/conv2/W/Adam/Assign^branch1/conv2/W/Adam_1/Assign^branch1/conv2/b/Adam/Assign^branch1/conv2/b/Adam_1/Assign^branch2/conv2/W/Adam/Assign^branch2/conv2/W/Adam_1/Assign^branch2/conv2/b/Adam/Assign^branch2/conv2/b/Adam_1/Assign^dense/W/Adam/Assign^dense/W/Adam_1/Assign^dense/b/Adam/Assign^dense/b/Adam_1/Assign"