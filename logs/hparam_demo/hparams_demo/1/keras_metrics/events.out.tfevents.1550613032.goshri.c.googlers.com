       £K"	   ×Abrain.Event:2
ò9Áõ     ·úÄâ	Dı×A"è·


)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
§
Adam/iterationsVarHandleOp*
shape: *
	container *"
_class
loc:@Adam/iterations*
_output_shapes
: * 
shared_nameAdam/iterations*
dtype0	
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

!Adam/lr/Initializer/initial_valueConst*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: *
valueB
 *o:

Adam/lrVarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@Adam/lr*
_output_shapes
: *
shared_name	Adam/lr
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
dtype0*
_output_shapes
: *
_class
loc:@Adam/lr

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
shape: *
	container *
_class
loc:@Adam/beta_1*
_output_shapes
: *
shared_nameAdam/beta_1*
dtype0
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
dtype0*
_class
loc:@Adam/beta_1

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *w¾?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@Adam/beta_2*
_output_shapes
: *
shared_nameAdam/beta_2
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

$Adam/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Adam/decay


Adam/decayVarHandleOp*
shape: *
	container *
_class
loc:@Adam/decay*
_output_shapes
: *
shared_name
Adam/decay*
dtype0
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
r
input_1Placeholder* 
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
L
ShapeShapeinput_1*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ù
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
new_axis_mask *
T0*
_output_shapes
: *

begin_mask *
shrink_axis_mask*
ellipsis_mask *
end_mask 
Z
Reshape/shape/1Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
o
Reshape/shapePackstrided_sliceReshape/shape/1*
_output_shapes
:*

axis *
T0*
N
k
ReshapeReshapeinput_1Reshape/shape*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

-dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"     *
_class
loc:@dense/kernel

+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: *
valueB
 *¬\±½

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *¬\±=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
æ
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
_output_shapes
:	*
T0
§
dense/kernelVarHandleOp*
_output_shapes
: *
shared_namedense/kernel*
dtype0*
shape:	*
	container *
_class
loc:@dense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:	

dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense/bias


dense/biasVarHandleOp*
_output_shapes
: *
shared_name
dense/bias*
dtype0*
shape:*
	container *
_class
loc:@dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
c
MatMul/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	

MatMulMatMulReshapeMatMul/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b( *
transpose_a( *
T0
]
BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
{
BiasAddBiasAddMatMulBiasAdd/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
data_formatNHWC
G
ReluReluBiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
keras_learning_phase/inputConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 
d
cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

I
cond/switch_tIdentitycond/Switch:1*
_output_shapes
: *
T0

G
cond/switch_fIdentitycond/Switch*
_output_shapes
: *
T0

O
cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

f
cond/dropout/rateConst^cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *ÍÌÌ=
m
cond/dropout/ShapeShapecond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0

cond/dropout/Shape/SwitchSwitchRelucond/pred_id*
T0*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
g
cond/dropout/sub/xConst^cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
_
cond/dropout/subSubcond/dropout/sub/xcond/dropout/rate*
T0*
_output_shapes
: 
t
cond/dropout/random_uniform/minConst^cond/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
t
cond/dropout/random_uniform/maxConst^cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¦
)cond/dropout/random_uniform/RandomUniformRandomUniformcond/dropout/Shape*
seed2 *

seed *
T0*
dtype0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

cond/dropout/random_uniform/subSubcond/dropout/random_uniform/maxcond/dropout/random_uniform/min*
_output_shapes
: *
T0
¤
cond/dropout/random_uniform/mulMul)cond/dropout/random_uniform/RandomUniformcond/dropout/random_uniform/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond/dropout/random_uniformAddcond/dropout/random_uniform/mulcond/dropout/random_uniform/min*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
x
cond/dropout/addAddcond/dropout/subcond/dropout/random_uniform*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
cond/dropout/FloorFloorcond/dropout/add*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond/dropout/truedivRealDivcond/dropout/Shape/Switch:1cond/dropout/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
cond/dropout/mulMulcond/dropout/truedivcond/dropout/Floor*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
a
cond/IdentityIdentitycond/Identity/Switch*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

cond/Identity/SwitchSwitchRelucond/pred_id*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*
_class
	loc:@Relu
q

cond/MergeMergecond/Identitycond/dropout/mul*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
T0*
N
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ôôõ¾*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ôôõ>*!
_class
loc:@dense_1/kernel*
dtype0
ë
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
è
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes

:
*
T0
Ú
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes

:
*
T0
¬
dense_1/kernelVarHandleOp*
dtype0*
shape
:
*
	container *!
_class
loc:@dense_1/kernel*
_output_shapes
: *
shared_namedense_1/kernel
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes

:


dense_1/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

¢
dense_1/biasVarHandleOp*
dtype0*
shape:
*
	container *
_class
loc:@dense_1/bias*
_output_shapes
: *
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
_class
loc:@dense_1/bias*
dtype0
f
MatMul_1/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:


MatMul_1MatMul
cond/MergeMatMul_1/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
transpose_b( *
transpose_a( *
T0
a
BiasAdd_1/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:


	BiasAdd_1BiasAddMatMul_1BiasAdd_1/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
data_formatNHWC
O
SoftmaxSoftmax	BiasAdd_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0

output_1_targetPlaceholder*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
R
ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:

output_1_sample_weightsPlaceholderWithDefaultConst*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
v
total/Initializer/zerosConst*
_class

loc:@total*
dtype0*
_output_shapes
: *
valueB
 *    

totalVarHandleOp*
dtype0*
shape: *
	container *
_class

loc:@total*
_output_shapes
: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 

countVarHandleOp*
dtype0*
shape: *
	container *
_class

loc:@count*
_output_shapes
: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
s
 loss/output_1_loss/Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
:

loss/output_1_loss/ReshapeReshapeoutput_1_target loss/output_1_loss/Reshape/shape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
Tshape0

loss/output_1_loss/CastCastloss/output_1_loss/Reshape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Truncate( *

SrcT0*

DstT0	
s
"loss/output_1_loss/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"ÿÿÿÿ
   

loss/output_1_loss/Reshape_1Reshape	BiasAdd_1"loss/output_1_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


<loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/output_1_loss/Cast*
_output_shapes
:*
T0	*
out_type0

Zloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/output_1_loss/Reshape_1loss/output_1_loss/Cast*
T0*
Tlabels0	*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ


Gloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeoutput_1_sample_weights*
T0*
out_type0*
_output_shapes
:

Floss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B :
à
Floss/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Eloss/output_1_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Eloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
ü
Closs/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarEqualEloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xFloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Oloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ñ
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityQloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ï
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityOloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

Â
Ploss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

í
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarPloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*V
_classL
JHloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0


oloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualvloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchxloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

vloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchEloss/output_1_loss/broadcast_weights/assert_broadcastable/values/rankPloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 

xloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchFloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankPloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ø
iloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitcholoss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankoloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0


kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitykloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityiloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


jloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityoloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
¼
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
Ò
~loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
°
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchFloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shapePloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::*
T0

loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchjloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ã
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
´
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ì
}loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
¯
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
value	B :*
dtype0
Ä
zloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2~loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims}loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
_output_shapes

:*

Tidx0*
T0*
N
¾
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
Ù
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes

:
´
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchGloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapePloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchjloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*Z
_classP
NLloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0

loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1zloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:*
set_operationa-b*
validate_indices(*
T0
Ï
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
¥
uloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualuloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ú
kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switcholoss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_classx
vtloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

ÿ
hloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergekloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
T0
*
N
Â
Nloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergehloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeSloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
_output_shapes
: : *
T0
*
N
§
?loss/output_1_loss/broadcast_weights/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_2Const**
value!B Boutput_1_sample_weights:0*
dtype0*
_output_shapes
: 

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ş
Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_4Const*m
valuedBb B\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Lloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Ë
Nloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
_output_shapes
: *
T0

É
Nloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityLloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Ê
Mloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

£
Jloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Xloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tK^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*a
_classW
USloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0


Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ó
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ş
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: **
value!B Boutput_1_sample_weights:0
ò
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Á
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*m
valuedBb B\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
ï
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ó
Lloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertSloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
	summarize*
T
2	


Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*a
_classW
USloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ş
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchGloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Z
_classP
NLloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ü
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchFloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
î
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*V
_classL
JHloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0


Zloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fM^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*a
_classW
USloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
¶
Kloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeZloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Xloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N

4loss/output_1_loss/broadcast_weights/ones_like/ShapeShapeZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsL^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ç
4loss/output_1_loss/broadcast_weights/ones_like/ConstConstL^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
â
.loss/output_1_loss/broadcast_weights/ones_likeFill4loss/output_1_loss/broadcast_weights/ones_like/Shape4loss/output_1_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*

index_type0
¢
$loss/output_1_loss/broadcast_weightsMuloutput_1_sample_weights.loss/output_1_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í
loss/output_1_loss/MulMulZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits$loss/output_1_loss/broadcast_weights*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
b
loss/output_1_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

loss/output_1_loss/SumSumloss/output_1_loss/Mulloss/output_1_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
d
loss/output_1_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

loss/output_1_loss/Sum_1Sum$loss/output_1_loss/broadcast_weightsloss/output_1_loss/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
|
loss/output_1_loss/div_no_nanDivNoNanloss/output_1_loss/Sumloss/output_1_loss/Sum_1*
_output_shapes
: *
T0
]
loss/output_1_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

loss/output_1_loss/MeanMeanloss/output_1_loss/div_no_nanloss/output_1_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/output_1_loss/Mean*
T0*
_output_shapes
: 

metrics/acc/CastCastoutput_1_target*
Truncate( *

SrcT0*

DstT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
~
metrics/acc/SqueezeSqueezemetrics/acc/Cast*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ

metrics/acc/ArgMaxArgMaxSoftmaxmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0*
T0
{
metrics/acc/Cast_1Castmetrics/acc/ArgMax*
Truncate( *

SrcT0	*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
q
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
z
metrics/acc/Cast_2Castmetrics/acc/Equal*
Truncate( *

SrcT0
*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
metrics/acc/SizeSizemetrics/acc/Cast_2*
_output_shapes
: *
T0*
out_type0
l
metrics/acc/Cast_3Castmetrics/acc/Size*
Truncate( *

SrcT0*

DstT0*
_output_shapes
: 
[
metrics/acc/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
{
metrics/acc/SumSummetrics/acc/Cast_2metrics/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
z
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp*
dtype0*
_output_shapes
: 
}
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_3^metrics/acc/ReadVariableOp*
dtype0

metrics/acc/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1^metrics/acc/ReadVariableOp*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0

metrics/acc/Squeeze_1Squeezeoutput_1_target*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxSoftmaxmetrics/acc/ArgMax_1/dimension*
output_type0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0*
T0
}
metrics/acc/Cast_4Castmetrics/acc/ArgMax_1*
Truncate( *

SrcT0	*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
metrics/acc/Equal_1Equalmetrics/acc/Squeeze_1metrics/acc/Cast_4*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
|
metrics/acc/Cast_5Castmetrics/acc/Equal_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Truncate( *

SrcT0
*

DstT0
]
metrics/acc/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

metrics/acc/MeanMeanmetrics/acc/Cast_5metrics/acc/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
}
training/Adam/gradients/ShapeConst*
_output_shapes
: *
valueB *
_class
loc:@loss/mul*
dtype0

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
¶
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
¥
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/output_1_loss/Mean*
_class
loc:@loss/mul*
_output_shapes
: *
T0

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_class
loc:@loss/mul*
_output_shapes
: *
T0
±
Btraining/Adam/gradients/loss/output_1_loss/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
: *
valueB **
_class 
loc:@loss/output_1_loss/Mean

<training/Adam/gradients/loss/output_1_loss/Mean_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Btraining/Adam/gradients/loss/output_1_loss/Mean_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss/output_1_loss/Mean*
_output_shapes
: 
©
:training/Adam/gradients/loss/output_1_loss/Mean_grad/ConstConst*
valueB **
_class 
loc:@loss/output_1_loss/Mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/output_1_loss/Mean_grad/TileTile<training/Adam/gradients/loss/output_1_loss/Mean_grad/Reshape:training/Adam/gradients/loss/output_1_loss/Mean_grad/Const*
T0*

Tmultiples0**
_class 
loc:@loss/output_1_loss/Mean*
_output_shapes
: 
­
<training/Adam/gradients/loss/output_1_loss/Mean_grad/Const_1Const*
valueB
 *  ?**
_class 
loc:@loss/output_1_loss/Mean*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/output_1_loss/Mean_grad/truedivRealDiv9training/Adam/gradients/loss/output_1_loss/Mean_grad/Tile<training/Adam/gradients/loss/output_1_loss/Mean_grad/Const_1*
_output_shapes
: *
T0**
_class 
loc:@loss/output_1_loss/Mean
µ
@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ShapeConst*
valueB *0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
·
Btraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape_1Const*
valueB *0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
Ş
Ptraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ShapeBtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape_1*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
ü
Etraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nanDivNoNan<training/Adam/gradients/loss/output_1_loss/Mean_grad/truedivloss/output_1_loss/Sum_1*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: *
T0
Î
>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/SumSumEtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nanPtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/BroadcastGradientArgs*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
°
Btraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ReshapeReshape>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Sum@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape*
T0*
Tshape0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: 
°
>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/NegNegloss/output_1_loss/Sum*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: 

Gtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_1DivNoNan>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Negloss/output_1_loss/Sum_1*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: 

Gtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_2DivNoNanGtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_1loss/output_1_loss/Sum_1*
_output_shapes
: *
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan

>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/mulMul<training/Adam/gradients/loss/output_1_loss/Mean_grad/truedivGtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_2*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: 
Ë
@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Sum_1Sum>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/mulRtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/BroadcastGradientArgs:1*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
¶
Dtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Reshape_1Reshape@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Sum_1Btraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan
¶
Atraining/Adam/gradients/loss/output_1_loss/Sum_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*)
_class
loc:@loss/output_1_loss/Sum
«
;training/Adam/gradients/loss/output_1_loss/Sum_grad/ReshapeReshapeBtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ReshapeAtraining/Adam/gradients/loss/output_1_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*)
_class
loc:@loss/output_1_loss/Sum*
_output_shapes
:
º
9training/Adam/gradients/loss/output_1_loss/Sum_grad/ShapeShapeloss/output_1_loss/Mul*)
_class
loc:@loss/output_1_loss/Sum*
_output_shapes
:*
T0*
out_type0
£
8training/Adam/gradients/loss/output_1_loss/Sum_grad/TileTile;training/Adam/gradients/loss/output_1_loss/Sum_grad/Reshape9training/Adam/gradients/loss/output_1_loss/Sum_grad/Shape*

Tmultiples0*)
_class
loc:@loss/output_1_loss/Sum*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
ş
9training/Adam/gradients/loss/output_1_loss/Mul_grad/ShapeShapeZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*)
_class
loc:@loss/output_1_loss/Mul*
_output_shapes
:
Ê
;training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape_1Shape$loss/output_1_loss/broadcast_weights*
out_type0*)
_class
loc:@loss/output_1_loss/Mul*
_output_shapes
:*
T0
Â
Itraining/Adam/gradients/loss/output_1_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape;training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape_1*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*)
_class
loc:@loss/output_1_loss/Mul
÷
7training/Adam/gradients/loss/output_1_loss/Mul_grad/MulMul8training/Adam/gradients/loss/output_1_loss/Sum_grad/Tile$loss/output_1_loss/broadcast_weights*
T0*)
_class
loc:@loss/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
­
7training/Adam/gradients/loss/output_1_loss/Mul_grad/SumSum7training/Adam/gradients/loss/output_1_loss/Mul_grad/MulItraining/Adam/gradients/loss/output_1_loss/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/output_1_loss/Mul
¡
;training/Adam/gradients/loss/output_1_loss/Mul_grad/ReshapeReshape7training/Adam/gradients/loss/output_1_loss/Mul_grad/Sum9training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape*
Tshape0*)
_class
loc:@loss/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¯
9training/Adam/gradients/loss/output_1_loss/Mul_grad/Mul_1MulZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits8training/Adam/gradients/loss/output_1_loss/Sum_grad/Tile*)
_class
loc:@loss/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
³
9training/Adam/gradients/loss/output_1_loss/Mul_grad/Sum_1Sum9training/Adam/gradients/loss/output_1_loss/Mul_grad/Mul_1Ktraining/Adam/gradients/loss/output_1_loss/Mul_grad/BroadcastGradientArgs:1*
T0*)
_class
loc:@loss/output_1_loss/Mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
§
=training/Adam/gradients/loss/output_1_loss/Mul_grad/Reshape_1Reshape9training/Adam/gradients/loss/output_1_loss/Mul_grad/Sum_1;training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape_1*
T0*
Tshape0*)
_class
loc:@loss/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
®
"training/Adam/gradients/zeros_like	ZerosLike\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Ñ
training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*´
message¨¥Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Á
training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ

training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;training/Adam/gradients/loss/output_1_loss/Mul_grad/Reshapetraining/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
²
{training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

¹
?training/Adam/gradients/loss/output_1_loss/Reshape_1_grad/ShapeShape	BiasAdd_1*
T0*
out_type0*/
_class%
#!loc:@loss/output_1_loss/Reshape_1*
_output_shapes
:
û
Atraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/ReshapeReshape{training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul?training/Adam/gradients/loss/output_1_loss/Reshape_1_grad/Shape*
Tshape0*/
_class%
#!loc:@loss/output_1_loss/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
Ş
2training/Adam/gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradAtraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/Reshape*
data_formatNHWC*
_class
loc:@BiasAdd_1*
_output_shapes
:
*
T0

,training/Adam/gradients/MatMul_1_grad/MatMulMatMulAtraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/ReshapeMatMul_1/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(*
T0*
transpose_a( *
_class
loc:@MatMul_1
ó
.training/Adam/gradients/MatMul_1_grad/MatMul_1MatMul
cond/MergeAtraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/Reshape*
_output_shapes

:
*
transpose_b( *
T0*
transpose_a(*
_class
loc:@MatMul_1
Ù
1training/Adam/gradients/cond/Merge_grad/cond_gradSwitch,training/Adam/gradients/MatMul_1_grad/MatMulcond/pred_id*
T0*
_class
loc:@MatMul_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
¬
3training/Adam/gradients/cond/dropout/mul_grad/ShapeShapecond/dropout/truediv*
T0*
out_type0*#
_class
loc:@cond/dropout/mul*
_output_shapes
:
¬
5training/Adam/gradients/cond/dropout/mul_grad/Shape_1Shapecond/dropout/Floor*#
_class
loc:@cond/dropout/mul*
_output_shapes
:*
T0*
out_type0
ª
Ctraining/Adam/gradients/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3training/Adam/gradients/cond/dropout/mul_grad/Shape5training/Adam/gradients/cond/dropout/mul_grad/Shape_1*#
_class
loc:@cond/dropout/mul*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
Ø
1training/Adam/gradients/cond/dropout/mul_grad/MulMul3training/Adam/gradients/cond/Merge_grad/cond_grad:1cond/dropout/Floor*
T0*#
_class
loc:@cond/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

1training/Adam/gradients/cond/dropout/mul_grad/SumSum1training/Adam/gradients/cond/dropout/mul_grad/MulCtraining/Adam/gradients/cond/dropout/mul_grad/BroadcastGradientArgs*#
_class
loc:@cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

5training/Adam/gradients/cond/dropout/mul_grad/ReshapeReshape1training/Adam/gradients/cond/dropout/mul_grad/Sum3training/Adam/gradients/cond/dropout/mul_grad/Shape*
T0*
Tshape0*#
_class
loc:@cond/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
3training/Adam/gradients/cond/dropout/mul_grad/Mul_1Mulcond/dropout/truediv3training/Adam/gradients/cond/Merge_grad/cond_grad:1*#
_class
loc:@cond/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

3training/Adam/gradients/cond/dropout/mul_grad/Sum_1Sum3training/Adam/gradients/cond/dropout/mul_grad/Mul_1Etraining/Adam/gradients/cond/dropout/mul_grad/BroadcastGradientArgs:1*#
_class
loc:@cond/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

7training/Adam/gradients/cond/dropout/mul_grad/Reshape_1Reshape3training/Adam/gradients/cond/dropout/mul_grad/Sum_15training/Adam/gradients/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*#
_class
loc:@cond/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

training/Adam/gradients/SwitchSwitchRelucond/pred_id*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0

 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
_class
	loc:@Relu*
_output_shapes
:*
T0*
out_type0
¤
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
_class
	loc:@Relu*
dtype0*
_output_shapes
: *
valueB
 *    
È
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
T0*

index_type0*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ì
;training/Adam/gradients/cond/Identity/Switch_grad/cond_gradMerge1training/Adam/gradients/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
N*
T0*
_class
	loc:@Relu*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 
»
7training/Adam/gradients/cond/dropout/truediv_grad/ShapeShapecond/dropout/Shape/Switch:1*
T0*
out_type0*'
_class
loc:@cond/dropout/truediv*
_output_shapes
:
¥
9training/Adam/gradients/cond/dropout/truediv_grad/Shape_1Const*
valueB *'
_class
loc:@cond/dropout/truediv*
dtype0*
_output_shapes
: 
º
Gtraining/Adam/gradients/cond/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs7training/Adam/gradients/cond/dropout/truediv_grad/Shape9training/Adam/gradients/cond/dropout/truediv_grad/Shape_1*
T0*'
_class
loc:@cond/dropout/truediv*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
9training/Adam/gradients/cond/dropout/truediv_grad/RealDivRealDiv5training/Adam/gradients/cond/dropout/mul_grad/Reshapecond/dropout/sub*
T0*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
©
5training/Adam/gradients/cond/dropout/truediv_grad/SumSum9training/Adam/gradients/cond/dropout/truediv_grad/RealDivGtraining/Adam/gradients/cond/dropout/truediv_grad/BroadcastGradientArgs*
T0*'
_class
loc:@cond/dropout/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 

9training/Adam/gradients/cond/dropout/truediv_grad/ReshapeReshape5training/Adam/gradients/cond/dropout/truediv_grad/Sum7training/Adam/gradients/cond/dropout/truediv_grad/Shape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
Tshape0*'
_class
loc:@cond/dropout/truediv
´
5training/Adam/gradients/cond/dropout/truediv_grad/NegNegcond/dropout/Shape/Switch:1*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
ê
;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_1RealDiv5training/Adam/gradients/cond/dropout/truediv_grad/Negcond/dropout/sub*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
ğ
;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_2RealDiv;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_1cond/dropout/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*'
_class
loc:@cond/dropout/truediv

5training/Adam/gradients/cond/dropout/truediv_grad/mulMul5training/Adam/gradients/cond/dropout/mul_grad/Reshape;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_2*
T0*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
©
7training/Adam/gradients/cond/dropout/truediv_grad/Sum_1Sum5training/Adam/gradients/cond/dropout/truediv_grad/mulItraining/Adam/gradients/cond/dropout/truediv_grad/BroadcastGradientArgs:1*
T0*'
_class
loc:@cond/dropout/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 

;training/Adam/gradients/cond/dropout/truediv_grad/Reshape_1Reshape7training/Adam/gradients/cond/dropout/truediv_grad/Sum_19training/Adam/gradients/cond/dropout/truediv_grad/Shape_1*
T0*
Tshape0*'
_class
loc:@cond/dropout/truediv*
_output_shapes
: 

 training/Adam/gradients/Switch_1SwitchRelucond/pred_id*
T0*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
T0*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
_output_shapes
:*
T0*
out_type0*
_class
	loc:@Relu
¨
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
	loc:@Relu
Ì
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
T0*

index_type0*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
û
@training/Adam/gradients/cond/dropout/Shape/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_19training/Adam/gradients/cond/dropout/truediv_grad/Reshape*
_class
	loc:@Relu*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
N*
T0
÷
training/Adam/gradients/AddNAddN;training/Adam/gradients/cond/Identity/Switch_grad/cond_grad@training/Adam/gradients/cond/dropout/Shape/Switch_grad/cond_grad*
N*
T0*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¥
*training/Adam/gradients/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddNRelu*
T0*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ã
0training/Adam/gradients/BiasAdd_grad/BiasAddGradBiasAddGrad*training/Adam/gradients/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_class
loc:@BiasAdd*
_output_shapes
:
ë
*training/Adam/gradients/MatMul_grad/MatMulMatMul*training/Adam/gradients/Relu_grad/ReluGradMatMul/ReadVariableOp*
_class
loc:@MatMul*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(*
T0*
transpose_a( 
Ö
,training/Adam/gradients/MatMul_grad/MatMul_1MatMulReshape*training/Adam/gradients/Relu_grad/ReluGrad*
_output_shapes
:	*
transpose_b( *
T0*
transpose_a(*
_class
loc:@MatMul
U
training/Adam/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 

!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations^training/Adam/ReadVariableOp*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*
_output_shapes
: *
Truncate( *

SrcT0	*

DstT0
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
o
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/Cast*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
dtype0*
_output_shapes
: *
valueB
 *  
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
_output_shapes
: *
T0

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/Cast*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*
T0*

index_type0*
_output_shapes
:	
Å
training/Adam/VariableVarHandleOp*
_output_shapes
: *'
shared_nametraining/Adam/Variable*
dtype0*
shape:	*
	container *)
_class
loc:@training/Adam/Variable
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
­
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
:	
b
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
Æ
training/Adam/Variable_1VarHandleOp*
dtype0*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
: *)
shared_nametraining/Adam/Variable_1

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
®
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
:
j
training/Adam/zeros_2Const*
dtype0*
_output_shapes

:
*
valueB
*    
Ê
training/Adam/Variable_2VarHandleOp*
shape
:
*
	container *+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: *)
shared_nametraining/Adam/Variable_2*
dtype0

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
²
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes

:

b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
:
*
valueB
*    
Æ
training/Adam/Variable_3VarHandleOp*
shape:
*
	container *+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3*
dtype0

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
®
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
:

v
%training/Adam/zeros_4/shape_as_tensorConst*
_output_shapes
:*
valueB"     *
dtype0
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0*
_output_shapes
:	
Ë
training/Adam/Variable_4VarHandleOp*
shape:	*
	container *+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4*
dtype0

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
³
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
_output_shapes
:	*+
_class!
loc:@training/Adam/Variable_4*
dtype0
b
training/Adam/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:
Æ
training/Adam/Variable_5VarHandleOp*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5*
dtype0*
shape:*
	container 

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
®
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_5*
dtype0
j
training/Adam/zeros_6Const*
dtype0*
_output_shapes

:
*
valueB
*    
Ê
training/Adam/Variable_6VarHandleOp*
dtype0*
shape
:
*
	container *+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0
²
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes

:

b
training/Adam/zeros_7Const*
valueB
*    *
dtype0*
_output_shapes
:

Æ
training/Adam/Variable_7VarHandleOp*
shape:
*
	container *+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
: *)
shared_nametraining/Adam/Variable_7*
dtype0

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0
®
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
_output_shapes
:
*+
_class!
loc:@training/Adam/Variable_7*
dtype0
o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:
Æ
training/Adam/Variable_8VarHandleOp*
dtype0*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0
®
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
:
o
%training/Adam/zeros_9/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:
Æ
training/Adam/Variable_9VarHandleOp*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
: *)
shared_nametraining/Adam/Variable_9*
dtype0

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*
dtype0*+
_class!
loc:@training/Adam/Variable_9
®
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_10VarHandleOp*
shape:*
	container *,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
: **
shared_nametraining/Adam/Variable_10*
dtype0

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
¢
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*
dtype0*,
_class"
 loc:@training/Adam/Variable_10
±
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_11VarHandleOp*
shape:*
	container *,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: **
shared_nametraining/Adam/Variable_11*
dtype0

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
¢
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0
±
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
z
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*
_output_shapes
:	

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
_output_shapes
:	*
T0
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
_output_shapes
: *
T0

training/Adam/mul_2Multraining/Adam/sub_2,training/Adam/gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
l
training/Adam/addAddtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes
:	
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
_output_shapes
:	*
dtype0

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
_output_shapes
:	*
T0
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
T0*
_output_shapes
: 
v
training/Adam/SquareSquare,training/Adam/gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
o
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
_output_shapes
:	*
T0
n
training/Adam/add_1Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes
:	
j
training/Adam/mul_5Multraining/Adam/multraining/Adam/add*
_output_shapes
:	*
T0
Z
training/Adam/Const_3Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_4Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_1training/Adam/Const_4*
_output_shapes
:	*
T0

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
_output_shapes
:	*
T0
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	
Z
training/Adam/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *¿Ö3
q
training/Adam/add_2Addtraining/Adam/Sqrt_1training/Adam/add_2/y*
T0*
_output_shapes
:	
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_2*
_output_shapes
:	*
T0
l
training/Adam/ReadVariableOp_6ReadVariableOpdense/kernel*
dtype0*
_output_shapes
:	
}
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
_output_shapes
:	*
T0
j
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*
_output_shapes
:	
p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_4training/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_4!^training/Adam/AssignVariableOp_1*
_output_shapes
:	*
dtype0
d
 training/Adam/AssignVariableOp_2AssignVariableOpdense/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpdense/kernel!^training/Adam/AssignVariableOp_2*
dtype0*
_output_shapes
:	
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
:

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training/Adam/mul_7Multraining/Adam/sub_50training/Adam/gradients/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/Adam/add_3Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0
w
training/Adam/Square_1Square0training/Adam/gradients/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:
i
training/Adam/add_4Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes
:*
T0
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_3*
_output_shapes
:*
T0
Z
training/Adam/Const_5Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_4training/Adam/Const_6*
T0*
_output_shapes
:

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
_output_shapes
:*
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:
Z
training/Adam/add_5/yConst*
valueB
 *¿Ö3*
dtype0*
_output_shapes
: 
l
training/Adam/add_5Addtraining/Adam/Sqrt_2training/Adam/add_5/y*
T0*
_output_shapes
:
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_5*
_output_shapes
:*
T0
f
training/Adam/ReadVariableOp_14ReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_3*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_5training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_5!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:
b
 training/Adam/AssignVariableOp_5AssignVariableOp
dense/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOp
dense/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
|
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes

:


training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_8.training/Adam/gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:
*
T0
o
training/Adam/add_6Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes

:


training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*
_output_shapes

:

c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
_output_shapes
: *
T0
y
training/Adam/Square_2Square.training/Adam/gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:
*
T0
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:
*
T0
o
training/Adam/add_7Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

:
*
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_6*
T0*
_output_shapes

:

Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_7training/Adam/Const_8*
_output_shapes

:
*
T0

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
T0*
_output_shapes

:

d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes

:
*
T0
Z
training/Adam/add_8/yConst*
_output_shapes
: *
valueB
 *¿Ö3*
dtype0
p
training/Adam/add_8Addtraining/Adam/Sqrt_3training/Adam/add_8/y*
_output_shapes

:
*
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_8*
_output_shapes

:
*
T0
n
training/Adam/ReadVariableOp_22ReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:

~
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*
_output_shapes

:

p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_6*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
_output_shapes

:
*
dtype0
p
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_6training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_6!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes

:

g
 training/Adam/AssignVariableOp_8AssignVariableOpdense_1/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpdense_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes

:

c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes
:


training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
_output_shapes
: *
T0

training/Adam/mul_17Multraining/Adam/sub_112training/Adam/gradients/BiasAdd_1_grad/BiasAddGrad*
T0*
_output_shapes
:

k
training/Adam/add_9Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
x
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:


training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
_output_shapes
: *
T0
y
training/Adam/Square_3Square2training/Adam/gradients/BiasAdd_1_grad/BiasAddGrad*
T0*
_output_shapes
:

n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:
*
T0
l
training/Adam/add_10Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:

h
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_9*
_output_shapes
:
*
T0
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_10training/Adam/Const_10*
T0*
_output_shapes
:


training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
:

`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:

[
training/Adam/add_11/yConst*
valueB
 *¿Ö3*
dtype0*
_output_shapes
: 
n
training/Adam/add_11Addtraining/Adam/Sqrt_4training/Adam/add_11/y*
T0*
_output_shapes
:

s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_11*
T0*
_output_shapes
:

h
training/Adam/ReadVariableOp_30ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:

z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:
*
T0
p
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_9*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:

r
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_7training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:

f
!training/Adam/AssignVariableOp_11AssignVariableOpdense_1/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_11*
_output_shapes
:
*
dtype0
Ö
training_1/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
Z
VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
N
VarIsInitializedOp_1VarIsInitializedOp
Adam/decay*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense/kernel*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
\
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
\
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
\
VarIsInitializedOp_6VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
R
VarIsInitializedOp_7VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
]
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
S
VarIsInitializedOp_9VarIsInitializedOpAdam/iterations*
_output_shapes
: 
Q
VarIsInitializedOp_10VarIsInitializedOpdense_1/bias*
_output_shapes
: 
J
VarIsInitializedOp_11VarIsInitializedOpcount*
_output_shapes
: 
J
VarIsInitializedOp_12VarIsInitializedOptotal*
_output_shapes
: 
^
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
P
VarIsInitializedOp_14VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
O
VarIsInitializedOp_17VarIsInitializedOp
dense/bias*
_output_shapes
: 
L
VarIsInitializedOp_18VarIsInitializedOpAdam/lr*
_output_shapes
: 
P
VarIsInitializedOp_19VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
[
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^total/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
L
PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
A
evaluation/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan

(SGD/iterations/Initializer/initial_valueConst*
value	B	 R *!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 
¤
SGD/iterationsVarHandleOp*
dtype0	*
shape: *
	container *!
_class
loc:@SGD/iterations*
_output_shapes
: *
shared_nameSGD/iterations
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 

SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*!
_class
loc:@SGD/iterations*
dtype0	

"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 

 SGD/lr/Initializer/initial_valueConst*
valueB
 *
×#<*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

SGD/lrVarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@SGD/lr*
_output_shapes
: *
shared_nameSGD/lr
]
'SGD/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/lr*
_output_shapes
: 
s
SGD/lr/AssignAssignVariableOpSGD/lr SGD/lr/Initializer/initial_value*
dtype0*
_class
loc:@SGD/lr
t
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
_output_shapes
: *
_class
loc:@SGD/lr*
dtype0

&SGD/momentum/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

SGD/momentumVarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@SGD/momentum*
_output_shapes
: *
shared_nameSGD/momentum
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 

SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
_class
loc:@SGD/momentum*
dtype0

 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

#SGD/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 

	SGD/decayVarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@SGD/decay*
_output_shapes
: *
shared_name	SGD/decay
c
*SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp	SGD/decay*
_output_shapes
: 

SGD/decay/AssignAssignVariableOp	SGD/decay#SGD/decay/Initializer/initial_value*
_class
loc:@SGD/decay*
dtype0
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
t
	input_1_1Placeholder* 
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
Shape_1Shape	input_1_1*
T0*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
_output_shapes
: *

begin_mask *
shrink_axis_mask*
ellipsis_mask *
end_mask *
Index0*
new_axis_mask *
T0
\
Reshape_1/shape/1Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
u
Reshape_1/shapePackstrided_slice_1Reshape_1/shape/1*
T0*
N*
_output_shapes
:*

axis 
q
	Reshape_1Reshape	input_1_1Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"     *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *¬\±½*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *¬\±=*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ì
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_2/kernel*
_output_shapes
:	*
dtype0*
seed2 *

seed *
T0
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
é
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*!
_class
loc:@dense_2/kernel
Û
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*!
_class
loc:@dense_2/kernel
­
dense_2/kernelVarHandleOp*
dtype0*
shape:	*
	container *!
_class
loc:@dense_2/kernel*
_output_shapes
: *
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:	

dense_2/bias/Initializer/zerosConst*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:*
valueB*    
¢
dense_2/biasVarHandleOp*
shape:*
	container *
_class
loc:@dense_2/bias*
_output_shapes
: *
shared_namedense_2/bias*
dtype0
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:*
_class
loc:@dense_2/bias
g
MatMul_2/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	*
dtype0

MatMul_2MatMul	Reshape_1MatMul_2/ReadVariableOp*
transpose_a( *
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b( 
a
BiasAdd_2/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

	BiasAdd_2BiasAddMatMul_2BiasAdd_2/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
data_formatNHWC
K
Relu_1Relu	BiasAdd_2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
f
cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
T0
*
_output_shapes
: : 
M
cond_1/switch_tIdentitycond_1/Switch:1*
T0
*
_output_shapes
: 
K
cond_1/switch_fIdentitycond_1/Switch*
T0
*
_output_shapes
: 
Q
cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

j
cond_1/dropout/rateConst^cond_1/switch_t*
valueB
 *ÍÌÌ=*
dtype0*
_output_shapes
: 
q
cond_1/dropout/ShapeShapecond_1/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:

cond_1/dropout/Shape/SwitchSwitchRelu_1cond_1/pred_id*
T0*
_class
loc:@Relu_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
k
cond_1/dropout/sub/xConst^cond_1/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
e
cond_1/dropout/subSubcond_1/dropout/sub/xcond_1/dropout/rate*
_output_shapes
: *
T0
x
!cond_1/dropout/random_uniform/minConst^cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *    
x
!cond_1/dropout/random_uniform/maxConst^cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
ª
+cond_1/dropout/random_uniform/RandomUniformRandomUniformcond_1/dropout/Shape*
dtype0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
seed2 *

seed *
T0

!cond_1/dropout/random_uniform/subSub!cond_1/dropout/random_uniform/max!cond_1/dropout/random_uniform/min*
_output_shapes
: *
T0
ª
!cond_1/dropout/random_uniform/mulMul+cond_1/dropout/random_uniform/RandomUniform!cond_1/dropout/random_uniform/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

cond_1/dropout/random_uniformAdd!cond_1/dropout/random_uniform/mul!cond_1/dropout/random_uniform/min*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
cond_1/dropout/addAddcond_1/dropout/subcond_1/dropout/random_uniform*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
c
cond_1/dropout/FloorFloorcond_1/dropout/add*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond_1/dropout/truedivRealDivcond_1/dropout/Shape/Switch:1cond_1/dropout/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
y
cond_1/dropout/mulMulcond_1/dropout/truedivcond_1/dropout/Floor*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
e
cond_1/IdentityIdentitycond_1/Identity/Switch*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond_1/Identity/SwitchSwitchRelu_1cond_1/pred_id*
_class
loc:@Relu_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
w
cond_1/MergeMergecond_1/Identitycond_1/dropout/mul*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
T0*
N
£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ôôõ¾*!
_class
loc:@dense_3/kernel

-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *ôôõ>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
ë
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:
*
dtype0
Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
è
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
_output_shapes

:
*
T0
Ú
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
_output_shapes

:
*
T0*!
_class
loc:@dense_3/kernel
¬
dense_3/kernelVarHandleOp*
shape
:
*
	container *!
_class
loc:@dense_3/kernel*
_output_shapes
: *
shared_namedense_3/kernel*
dtype0
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 

dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
dtype0

"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:


dense_3/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

¢
dense_3/biasVarHandleOp*
shape:
*
	container *
_class
loc:@dense_3/bias*
_output_shapes
: *
shared_namedense_3/bias*
dtype0
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 

dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0

 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

f
MatMul_3/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:
*
dtype0

MatMul_3MatMulcond_1/MergeMatMul_3/ReadVariableOp*
transpose_a( *
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
transpose_b( 
a
BiasAdd_3/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:


	BiasAdd_3BiasAddMatMul_3BiasAdd_3/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
data_formatNHWC
Q
	Softmax_1Softmax	BiasAdd_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


output_1_target_1Placeholder*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
T
Const_1Const*
valueB*  ?*
dtype0*
_output_shapes
:

output_1_sample_weights_1PlaceholderWithDefaultConst_1*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
total_1/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@total_1

total_1VarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@total_1*
_output_shapes
: *
shared_name	total_1
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_class
loc:@total_1*
dtype0*
_output_shapes
: 
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 

count_1VarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@count_1*
_output_shapes
: *
shared_name	count_1
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
u
"loss_1/output_1_loss/Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
:

loss_1/output_1_loss/ReshapeReshapeoutput_1_target_1"loss_1/output_1_loss/Reshape/shape*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

loss_1/output_1_loss/CastCastloss_1/output_1_loss/Reshape*
Truncate( *

SrcT0*

DstT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
$loss_1/output_1_loss/Reshape_1/shapeConst*
_output_shapes
:*
valueB"ÿÿÿÿ
   *
dtype0

loss_1/output_1_loss/Reshape_1Reshape	BiasAdd_3$loss_1/output_1_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


>loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss_1/output_1_loss/Cast*
T0	*
out_type0*
_output_shapes
:

\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss_1/output_1_loss/Reshape_1loss_1/output_1_loss/Cast*
Tlabels0	*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
*
T0
¢
Iloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeoutput_1_sample_weights_1*
T0*
out_type0*
_output_shapes
:

Hloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
ä
Hloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeShape\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:

Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :

Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Eloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarEqualGloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Õ
Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentitySloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ó
Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityQloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

Æ
Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
õ
Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*X
_classN
LJloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

xloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rankRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*Z
_classP
NLloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
¢
zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ş
kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0


mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitykloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


lloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
À
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
Ù
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0*

Tdim0
¸
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::*
T0

loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchlloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ç
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
¸
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Ò
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
´
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Î
|loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
_output_shapes

:*

Tidx0*
T0*
N
Â
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
ß
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
_output_shapes

:*
T0
¼
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchIloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*\
_classR
PNloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchlloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*\
_classR
PNloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
¥
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:*
set_operationa-b*
validate_indices(
Ó
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
©
wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
¡
uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*
_classz
xvloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 

jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
T0
*
N
È
Ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergejloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
_output_shapes
: : *
T0
*
N
©
Aloss_1/output_1_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_2Const*,
value#B! Boutput_1_sample_weights_1:0*
dtype0*
_output_shapes
: 

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
â
Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_4Const*
dtype0*
_output_shapes
: *o
valuefBd B^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_5Const*
_output_shapes
: *
valueB B
is_scalar=*
dtype0

Nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergePloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Ï
Ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Í
Ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityNloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Î
Oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

§
Lloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tM^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*c
_classY
WUloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0


Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
÷
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*,
value#B! Boutput_1_sample_weights_1:0*
dtype0*
_output_shapes
: 
ö
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
Ç
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*o
valuefBd B^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
ó
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
é
Nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertUloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchUloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
	summarize*
T
2	


Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*c
_classY
WUloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchIloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*\
_classR
PNloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0

Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape
ö
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*X
_classN
LJloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

\loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fO^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*c
_classY
WUloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
T0

¼
Mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMerge\loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
¢
6loss_1/output_1_loss/broadcast_weights/ones_like/ShapeShape\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsN^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ë
6loss_1/output_1_loss/broadcast_weights/ones_like/ConstConstN^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
valueB
 *  ?*
dtype0
è
0loss_1/output_1_loss/broadcast_weights/ones_likeFill6loss_1/output_1_loss/broadcast_weights/ones_like/Shape6loss_1/output_1_loss/broadcast_weights/ones_like/Const*

index_type0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¨
&loss_1/output_1_loss/broadcast_weightsMuloutput_1_sample_weights_10loss_1/output_1_loss/broadcast_weights/ones_like*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Ó
loss_1/output_1_loss/MulMul\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits&loss_1/output_1_loss/broadcast_weights*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
d
loss_1/output_1_loss/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

loss_1/output_1_loss/SumSumloss_1/output_1_loss/Mulloss_1/output_1_loss/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
f
loss_1/output_1_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
¥
loss_1/output_1_loss/Sum_1Sum&loss_1/output_1_loss/broadcast_weightsloss_1/output_1_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss_1/output_1_loss/div_no_nanDivNoNanloss_1/output_1_loss/Sumloss_1/output_1_loss/Sum_1*
T0*
_output_shapes
: 
_
loss_1/output_1_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

loss_1/output_1_loss/MeanMeanloss_1/output_1_loss/div_no_nanloss_1/output_1_loss/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
Q
loss_1/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
[

loss_1/mulMulloss_1/mul/xloss_1/output_1_loss/Mean*
T0*
_output_shapes
: 

metrics_1/acc/CastCastoutput_1_target_1*
Truncate( *

SrcT0*

DstT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

metrics_1/acc/SqueezeSqueezemetrics_1/acc/Cast*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
metrics_1/acc/ArgMax/dimensionConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

metrics_1/acc/ArgMaxArgMax	Softmax_1metrics_1/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0*
T0

metrics_1/acc/Cast_1Castmetrics_1/acc/ArgMax*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Truncate( *

SrcT0	
w
metrics_1/acc/EqualEqualmetrics_1/acc/Squeezemetrics_1/acc/Cast_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
~
metrics_1/acc/Cast_2Castmetrics_1/acc/Equal*
Truncate( *

SrcT0
*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
metrics_1/acc/SizeSizemetrics_1/acc/Cast_2*
T0*
out_type0*
_output_shapes
: 
p
metrics_1/acc/Cast_3Castmetrics_1/acc/Size*
Truncate( *

SrcT0*

DstT0*
_output_shapes
: 
]
metrics_1/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:

metrics_1/acc/SumSummetrics_1/acc/Cast_2metrics_1/acc/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
a
!metrics_1/acc/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/acc/Sum*
dtype0

metrics_1/acc/ReadVariableOpReadVariableOptotal_1"^metrics_1/acc/AssignAddVariableOp*
dtype0*
_output_shapes
: 

#metrics_1/acc/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics_1/acc/Cast_3^metrics_1/acc/ReadVariableOp*
dtype0
£
metrics_1/acc/ReadVariableOp_1ReadVariableOpcount_1$^metrics_1/acc/AssignAddVariableOp_1^metrics_1/acc/ReadVariableOp*
dtype0*
_output_shapes
: 

'metrics_1/acc/div_no_nan/ReadVariableOpReadVariableOptotal_1^metrics_1/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

)metrics_1/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^metrics_1/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_1/acc/div_no_nanDivNoNan'metrics_1/acc/div_no_nan/ReadVariableOp)metrics_1/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0

metrics_1/acc/Squeeze_1Squeezeoutput_1_target_1*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
 metrics_1/acc/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ

metrics_1/acc/ArgMax_1ArgMax	Softmax_1 metrics_1/acc/ArgMax_1/dimension*
output_type0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0*
T0

metrics_1/acc/Cast_4Castmetrics_1/acc/ArgMax_1*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Truncate( *

SrcT0	
{
metrics_1/acc/Equal_1Equalmetrics_1/acc/Squeeze_1metrics_1/acc/Cast_4*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

metrics_1/acc/Cast_5Castmetrics_1/acc/Equal_1*
Truncate( *

SrcT0
*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
metrics_1/acc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

metrics_1/acc/MeanMeanmetrics_1/acc/Cast_5metrics_1/acc/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

training_2/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss_1/mul*
dtype0*
_output_shapes
: 

"training_2/SGD/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss_1/mul*
dtype0*
_output_shapes
: 
»
training_2/SGD/gradients/FillFilltraining_2/SGD/gradients/Shape"training_2/SGD/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss_1/mul
­
,training_2/SGD/gradients/loss_1/mul_grad/MulMultraining_2/SGD/gradients/Fillloss_1/output_1_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss_1/mul
¢
.training_2/SGD/gradients/loss_1/mul_grad/Mul_1Multraining_2/SGD/gradients/Fillloss_1/mul/x*
_class
loc:@loss_1/mul*
_output_shapes
: *
T0
¶
Etraining_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Reshape/shapeConst*
valueB *,
_class"
 loc:@loss_1/output_1_loss/Mean*
dtype0*
_output_shapes
: 

?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/ReshapeReshape.training_2/SGD/gradients/loss_1/mul_grad/Mul_1Etraining_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Reshape/shape*
Tshape0*,
_class"
 loc:@loss_1/output_1_loss/Mean*
_output_shapes
: *
T0
®
=training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/ConstConst*
valueB *,
_class"
 loc:@loss_1/output_1_loss/Mean*
dtype0*
_output_shapes
: 
¥
<training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/TileTile?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Reshape=training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Const*
T0*

Tmultiples0*,
_class"
 loc:@loss_1/output_1_loss/Mean*
_output_shapes
: 
²
?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Const_1Const*
valueB
 *  ?*,
_class"
 loc:@loss_1/output_1_loss/Mean*
dtype0*
_output_shapes
: 

?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/truedivRealDiv<training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Tile?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Const_1*,
_class"
 loc:@loss_1/output_1_loss/Mean*
_output_shapes
: *
T0
º
Ctraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ShapeConst*
_output_shapes
: *
valueB *2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
dtype0
¼
Etraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape_1Const*
valueB *2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
é
Straining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ShapeEtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape_1*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

Htraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nanDivNoNan?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/truedivloss_1/output_1_loss/Sum_1*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0
Ù
Atraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/SumSumHtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nanStraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/BroadcastGradientArgs*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( 
»
Etraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ReshapeReshapeAtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/SumCtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape*
Tshape0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0
·
Atraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/NegNegloss_1/output_1_loss/Sum*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: 

Jtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_1DivNoNanAtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Negloss_1/output_1_loss/Sum_1*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0

Jtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_2DivNoNanJtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_1loss_1/output_1_loss/Sum_1*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0
ª
Atraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/mulMul?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/truedivJtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan
Ö
Ctraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Sum_1SumAtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/mulUtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/BroadcastGradientArgs:1*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Á
Gtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Reshape_1ReshapeCtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Sum_1Etraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape_1*
Tshape0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0
»
Dtraining_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Reshape/shapeConst*+
_class!
loc:@loss_1/output_1_loss/Sum*
dtype0*
_output_shapes
:*
valueB:
¶
>training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/ReshapeReshapeEtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ReshapeDtraining_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss_1/output_1_loss/Sum*
_output_shapes
:
Á
<training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/ShapeShapeloss_1/output_1_loss/Mul*
out_type0*+
_class!
loc:@loss_1/output_1_loss/Sum*
_output_shapes
:*
T0
®
;training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/TileTile>training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Reshape<training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Shape*
T0*

Tmultiples0*+
_class!
loc:@loss_1/output_1_loss/Sum*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/ShapeShape\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*+
_class!
loc:@loss_1/output_1_loss/Mul*
_output_shapes
:
Ñ
>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape_1Shape&loss_1/output_1_loss/broadcast_weights*
T0*
out_type0*+
_class!
loc:@loss_1/output_1_loss/Mul*
_output_shapes
:
Í
Ltraining_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape_1*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul

:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/MulMul;training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Tile&loss_1/output_1_loss/broadcast_weights*+
_class!
loc:@loss_1/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¸
:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/SumSum:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/MulLtraining_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/BroadcastGradientArgs*+
_class!
loc:@loss_1/output_1_loss/Mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¬
>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/ReshapeReshape:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Sum<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape*
T0*
Tshape0*+
_class!
loc:@loss_1/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¹
<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Mul_1Mul\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits;training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Tile*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¾
<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Sum_1Sum<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Mul_1Ntraining_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/BroadcastGradientArgs:1*+
_class!
loc:@loss_1/output_1_loss/Mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
²
@training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Reshape_1Reshape<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Sum_1>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@loss_1/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
#training_2/SGD/gradients/zeros_like	ZerosLike^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
Ø
training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨¥Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
Æ
training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0

training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Reshapetraining_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
½
~training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
¾
Btraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/ShapeShape	BiasAdd_3*1
_class'
%#loc:@loss_1/output_1_loss/Reshape_1*
_output_shapes
:*
T0*
out_type0

Dtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/ReshapeReshape~training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulBtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/Shape*
Tshape0*1
_class'
%#loc:@loss_1/output_1_loss/Reshape_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
â
3training_2/SGD/gradients/BiasAdd_3_grad/BiasAddGradBiasAddGradDtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_class
loc:@BiasAdd_3*
_output_shapes
:


-training_2/SGD/gradients/MatMul_3_grad/MatMulMatMulDtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/ReshapeMatMul_3/ReadVariableOp*
_class
loc:@MatMul_3*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(*
T0*
transpose_a( 
ù
/training_2/SGD/gradients/MatMul_3_grad/MatMul_1MatMulcond_1/MergeDtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/Reshape*
_output_shapes

:
*
transpose_b( *
T0*
transpose_a(*
_class
loc:@MatMul_3
ß
4training_2/SGD/gradients/cond_1/Merge_grad/cond_gradSwitch-training_2/SGD/gradients/MatMul_3_grad/MatMulcond_1/pred_id*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*
_class
loc:@MatMul_3
³
6training_2/SGD/gradients/cond_1/dropout/mul_grad/ShapeShapecond_1/dropout/truediv*
T0*
out_type0*%
_class
loc:@cond_1/dropout/mul*
_output_shapes
:
³
8training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape_1Shapecond_1/dropout/Floor*%
_class
loc:@cond_1/dropout/mul*
_output_shapes
:*
T0*
out_type0
µ
Ftraining_2/SGD/gradients/cond_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape8training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape_1*%
_class
loc:@cond_1/dropout/mul*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
â
4training_2/SGD/gradients/cond_1/dropout/mul_grad/MulMul6training_2/SGD/gradients/cond_1/Merge_grad/cond_grad:1cond_1/dropout/Floor*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*%
_class
loc:@cond_1/dropout/mul
 
4training_2/SGD/gradients/cond_1/dropout/mul_grad/SumSum4training_2/SGD/gradients/cond_1/dropout/mul_grad/MulFtraining_2/SGD/gradients/cond_1/dropout/mul_grad/BroadcastGradientArgs*%
_class
loc:@cond_1/dropout/mul*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

8training_2/SGD/gradients/cond_1/dropout/mul_grad/ReshapeReshape4training_2/SGD/gradients/cond_1/dropout/mul_grad/Sum6training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape*
Tshape0*%
_class
loc:@cond_1/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
æ
6training_2/SGD/gradients/cond_1/dropout/mul_grad/Mul_1Mulcond_1/dropout/truediv6training_2/SGD/gradients/cond_1/Merge_grad/cond_grad:1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*%
_class
loc:@cond_1/dropout/mul
¦
6training_2/SGD/gradients/cond_1/dropout/mul_grad/Sum_1Sum6training_2/SGD/gradients/cond_1/dropout/mul_grad/Mul_1Htraining_2/SGD/gradients/cond_1/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*%
_class
loc:@cond_1/dropout/mul

:training_2/SGD/gradients/cond_1/dropout/mul_grad/Reshape_1Reshape6training_2/SGD/gradients/cond_1/dropout/mul_grad/Sum_18training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape_1*
T0*
Tshape0*%
_class
loc:@cond_1/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¡
training_2/SGD/gradients/SwitchSwitchRelu_1cond_1/pred_id*
_class
loc:@Relu_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0

!training_2/SGD/gradients/IdentityIdentity!training_2/SGD/gradients/Switch:1*
T0*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 training_2/SGD/gradients/Shape_1Shape!training_2/SGD/gradients/Switch:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@Relu_1
¨
$training_2/SGD/gradients/zeros/ConstConst"^training_2/SGD/gradients/Identity*
valueB
 *    *
_class
loc:@Relu_1*
dtype0*
_output_shapes
: 
Í
training_2/SGD/gradients/zerosFill training_2/SGD/gradients/Shape_1$training_2/SGD/gradients/zeros/Const*
T0*

index_type0*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
õ
>training_2/SGD/gradients/cond_1/Identity/Switch_grad/cond_gradMerge4training_2/SGD/gradients/cond_1/Merge_grad/cond_gradtraining_2/SGD/gradients/zeros*
N*
T0*
_class
loc:@Relu_1*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 
Â
:training_2/SGD/gradients/cond_1/dropout/truediv_grad/ShapeShapecond_1/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@cond_1/dropout/truediv
ª
<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape_1Const*
valueB *)
_class
loc:@cond_1/dropout/truediv*
dtype0*
_output_shapes
: 
Å
Jtraining_2/SGD/gradients/cond_1/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape_1*)
_class
loc:@cond_1/dropout/truediv*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
ò
<training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDivRealDiv8training_2/SGD/gradients/cond_1/dropout/mul_grad/Reshapecond_1/dropout/sub*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
´
8training_2/SGD/gradients/cond_1/dropout/truediv_grad/SumSum<training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDivJtraining_2/SGD/gradients/cond_1/dropout/truediv_grad/BroadcastGradientArgs*)
_class
loc:@cond_1/dropout/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¨
<training_2/SGD/gradients/cond_1/dropout/truediv_grad/ReshapeReshape8training_2/SGD/gradients/cond_1/dropout/truediv_grad/Sum:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
Tshape0*)
_class
loc:@cond_1/dropout/truediv
»
8training_2/SGD/gradients/cond_1/dropout/truediv_grad/NegNegcond_1/dropout/Shape/Switch:1*
T0*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ô
>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_1RealDiv8training_2/SGD/gradients/cond_1/dropout/truediv_grad/Negcond_1/dropout/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*)
_class
loc:@cond_1/dropout/truediv
ú
>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_2RealDiv>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_1cond_1/dropout/sub*
T0*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

8training_2/SGD/gradients/cond_1/dropout/truediv_grad/mulMul8training_2/SGD/gradients/cond_1/dropout/mul_grad/Reshape>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_2*
T0*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Sum_1Sum8training_2/SGD/gradients/cond_1/dropout/truediv_grad/mulLtraining_2/SGD/gradients/cond_1/dropout/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@cond_1/dropout/truediv

>training_2/SGD/gradients/cond_1/dropout/truediv_grad/Reshape_1Reshape:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Sum_1<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0*)
_class
loc:@cond_1/dropout/truediv
£
!training_2/SGD/gradients/Switch_1SwitchRelu_1cond_1/pred_id*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*
_class
loc:@Relu_1

#training_2/SGD/gradients/Identity_1Identity!training_2/SGD/gradients/Switch_1*
T0*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 training_2/SGD/gradients/Shape_2Shape!training_2/SGD/gradients/Switch_1*
_class
loc:@Relu_1*
_output_shapes
:*
T0*
out_type0
¬
&training_2/SGD/gradients/zeros_1/ConstConst$^training_2/SGD/gradients/Identity_1*
_output_shapes
: *
valueB
 *    *
_class
loc:@Relu_1*
dtype0
Ñ
 training_2/SGD/gradients/zeros_1Fill training_2/SGD/gradients/Shape_2&training_2/SGD/gradients/zeros_1/Const*
T0*

index_type0*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Ctraining_2/SGD/gradients/cond_1/dropout/Shape/Switch_grad/cond_gradMerge training_2/SGD/gradients/zeros_1<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Reshape*
N*
T0*
_class
loc:@Relu_1*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

training_2/SGD/gradients/AddNAddN>training_2/SGD/gradients/cond_1/Identity/Switch_grad/cond_gradCtraining_2/SGD/gradients/cond_1/dropout/Shape/Switch_grad/cond_grad*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
N*
T0*
_class
loc:@Relu_1
­
-training_2/SGD/gradients/Relu_1_grad/ReluGradReluGradtraining_2/SGD/gradients/AddNRelu_1*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Ë
3training_2/SGD/gradients/BiasAdd_2_grad/BiasAddGradBiasAddGrad-training_2/SGD/gradients/Relu_1_grad/ReluGrad*
T0*
data_formatNHWC*
_class
loc:@BiasAdd_2*
_output_shapes
:
õ
-training_2/SGD/gradients/MatMul_2_grad/MatMulMatMul-training_2/SGD/gradients/Relu_1_grad/ReluGradMatMul_2/ReadVariableOp*
_class
loc:@MatMul_2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(*
T0*
transpose_a( 
à
/training_2/SGD/gradients/MatMul_2_grad/MatMul_1MatMul	Reshape_1-training_2/SGD/gradients/Relu_1_grad/ReluGrad*
_class
loc:@MatMul_2*
_output_shapes
:	*
transpose_b( *
T0*
transpose_a(
V
training_2/SGD/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
l
"training_2/SGD/AssignAddVariableOpAssignAddVariableOpSGD/iterationstraining_2/SGD/Const*
dtype0	

training_2/SGD/ReadVariableOpReadVariableOpSGD/iterations#^training_2/SGD/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
u
$training_2/SGD/zeros/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
_
training_2/SGD/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/SGD/zerosFill$training_2/SGD/zeros/shape_as_tensortraining_2/SGD/zeros/Const*
_output_shapes
:	*
T0*

index_type0
È
training_2/SGD/VariableVarHandleOp*
shape:	*
	container **
_class 
loc:@training_2/SGD/Variable*
_output_shapes
: *(
shared_nametraining_2/SGD/Variable*
dtype0

8training_2/SGD/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable*
_output_shapes
: 

training_2/SGD/Variable/AssignAssignVariableOptraining_2/SGD/Variabletraining_2/SGD/zeros**
_class 
loc:@training_2/SGD/Variable*
dtype0
°
+training_2/SGD/Variable/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable**
_class 
loc:@training_2/SGD/Variable*
dtype0*
_output_shapes
:	
c
training_2/SGD/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
É
training_2/SGD/Variable_1VarHandleOp*
shape:*
	container *,
_class"
 loc:@training_2/SGD/Variable_1*
_output_shapes
: **
shared_nametraining_2/SGD/Variable_1*
dtype0

:training_2/SGD/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable_1*
_output_shapes
: 
¢
 training_2/SGD/Variable_1/AssignAssignVariableOptraining_2/SGD/Variable_1training_2/SGD/zeros_1*
dtype0*,
_class"
 loc:@training_2/SGD/Variable_1
±
-training_2/SGD/Variable_1/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable_1*,
_class"
 loc:@training_2/SGD/Variable_1*
dtype0*
_output_shapes
:
k
training_2/SGD/zeros_2Const*
valueB
*    *
dtype0*
_output_shapes

:

Í
training_2/SGD/Variable_2VarHandleOp*
shape
:
*
	container *,
_class"
 loc:@training_2/SGD/Variable_2*
_output_shapes
: **
shared_nametraining_2/SGD/Variable_2*
dtype0

:training_2/SGD/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable_2*
_output_shapes
: 
¢
 training_2/SGD/Variable_2/AssignAssignVariableOptraining_2/SGD/Variable_2training_2/SGD/zeros_2*,
_class"
 loc:@training_2/SGD/Variable_2*
dtype0
µ
-training_2/SGD/Variable_2/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable_2*,
_class"
 loc:@training_2/SGD/Variable_2*
dtype0*
_output_shapes

:

c
training_2/SGD/zeros_3Const*
valueB
*    *
dtype0*
_output_shapes
:

É
training_2/SGD/Variable_3VarHandleOp*
dtype0*
shape:
*
	container *,
_class"
 loc:@training_2/SGD/Variable_3*
_output_shapes
: **
shared_nametraining_2/SGD/Variable_3

:training_2/SGD/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable_3*
_output_shapes
: 
¢
 training_2/SGD/Variable_3/AssignAssignVariableOptraining_2/SGD/Variable_3training_2/SGD/zeros_3*,
_class"
 loc:@training_2/SGD/Variable_3*
dtype0
±
-training_2/SGD/Variable_3/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable_3*,
_class"
 loc:@training_2/SGD/Variable_3*
dtype0*
_output_shapes
:

d
training_2/SGD/ReadVariableOp_1ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
z
!training_2/SGD/mul/ReadVariableOpReadVariableOptraining_2/SGD/Variable*
_output_shapes
:	*
dtype0

training_2/SGD/mulMultraining_2/SGD/ReadVariableOp_1!training_2/SGD/mul/ReadVariableOp*
_output_shapes
:	*
T0
^
training_2/SGD/ReadVariableOp_2ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_1Multraining_2/SGD/ReadVariableOp_2/training_2/SGD/gradients/MatMul_2_grad/MatMul_1*
T0*
_output_shapes
:	
m
training_2/SGD/subSubtraining_2/SGD/multraining_2/SGD/mul_1*
_output_shapes
:	*
T0
m
training_2/SGD/AssignVariableOpAssignVariableOptraining_2/SGD/Variabletraining_2/SGD/sub*
dtype0

training_2/SGD/ReadVariableOp_3ReadVariableOptraining_2/SGD/Variable ^training_2/SGD/AssignVariableOp*
dtype0*
_output_shapes
:	
o
training_2/SGD/ReadVariableOp_4ReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	
x
training_2/SGD/addAddtraining_2/SGD/ReadVariableOp_4training_2/SGD/sub*
_output_shapes
:	*
T0
f
!training_2/SGD/AssignVariableOp_1AssignVariableOpdense_2/kerneltraining_2/SGD/add*
dtype0

training_2/SGD/ReadVariableOp_5ReadVariableOpdense_2/kernel"^training_2/SGD/AssignVariableOp_1*
dtype0*
_output_shapes
:	
d
training_2/SGD/ReadVariableOp_6ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
y
#training_2/SGD/mul_2/ReadVariableOpReadVariableOptraining_2/SGD/Variable_1*
dtype0*
_output_shapes
:

training_2/SGD/mul_2Multraining_2/SGD/ReadVariableOp_6#training_2/SGD/mul_2/ReadVariableOp*
_output_shapes
:*
T0
^
training_2/SGD/ReadVariableOp_7ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_3Multraining_2/SGD/ReadVariableOp_73training_2/SGD/gradients/BiasAdd_2_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training_2/SGD/sub_1Subtraining_2/SGD/mul_2training_2/SGD/mul_3*
T0*
_output_shapes
:
s
!training_2/SGD/AssignVariableOp_2AssignVariableOptraining_2/SGD/Variable_1training_2/SGD/sub_1*
dtype0

training_2/SGD/ReadVariableOp_8ReadVariableOptraining_2/SGD/Variable_1"^training_2/SGD/AssignVariableOp_2*
_output_shapes
:*
dtype0
h
training_2/SGD/ReadVariableOp_9ReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
w
training_2/SGD/add_1Addtraining_2/SGD/ReadVariableOp_9training_2/SGD/sub_1*
_output_shapes
:*
T0
f
!training_2/SGD/AssignVariableOp_3AssignVariableOpdense_2/biastraining_2/SGD/add_1*
dtype0

 training_2/SGD/ReadVariableOp_10ReadVariableOpdense_2/bias"^training_2/SGD/AssignVariableOp_3*
dtype0*
_output_shapes
:
e
 training_2/SGD/ReadVariableOp_11ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
}
#training_2/SGD/mul_4/ReadVariableOpReadVariableOptraining_2/SGD/Variable_2*
_output_shapes

:
*
dtype0

training_2/SGD/mul_4Mul training_2/SGD/ReadVariableOp_11#training_2/SGD/mul_4/ReadVariableOp*
_output_shapes

:
*
T0
_
 training_2/SGD/ReadVariableOp_12ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_5Mul training_2/SGD/ReadVariableOp_12/training_2/SGD/gradients/MatMul_3_grad/MatMul_1*
T0*
_output_shapes

:

p
training_2/SGD/sub_2Subtraining_2/SGD/mul_4training_2/SGD/mul_5*
T0*
_output_shapes

:

s
!training_2/SGD/AssignVariableOp_4AssignVariableOptraining_2/SGD/Variable_2training_2/SGD/sub_2*
dtype0

 training_2/SGD/ReadVariableOp_13ReadVariableOptraining_2/SGD/Variable_2"^training_2/SGD/AssignVariableOp_4*
dtype0*
_output_shapes

:

o
 training_2/SGD/ReadVariableOp_14ReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:

|
training_2/SGD/add_2Add training_2/SGD/ReadVariableOp_14training_2/SGD/sub_2*
_output_shapes

:
*
T0
h
!training_2/SGD/AssignVariableOp_5AssignVariableOpdense_3/kerneltraining_2/SGD/add_2*
dtype0

 training_2/SGD/ReadVariableOp_15ReadVariableOpdense_3/kernel"^training_2/SGD/AssignVariableOp_5*
dtype0*
_output_shapes

:

e
 training_2/SGD/ReadVariableOp_16ReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
y
#training_2/SGD/mul_6/ReadVariableOpReadVariableOptraining_2/SGD/Variable_3*
dtype0*
_output_shapes
:


training_2/SGD/mul_6Mul training_2/SGD/ReadVariableOp_16#training_2/SGD/mul_6/ReadVariableOp*
_output_shapes
:
*
T0
_
 training_2/SGD/ReadVariableOp_17ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_7Mul training_2/SGD/ReadVariableOp_173training_2/SGD/gradients/BiasAdd_3_grad/BiasAddGrad*
_output_shapes
:
*
T0
l
training_2/SGD/sub_3Subtraining_2/SGD/mul_6training_2/SGD/mul_7*
T0*
_output_shapes
:

s
!training_2/SGD/AssignVariableOp_6AssignVariableOptraining_2/SGD/Variable_3training_2/SGD/sub_3*
dtype0

 training_2/SGD/ReadVariableOp_18ReadVariableOptraining_2/SGD/Variable_3"^training_2/SGD/AssignVariableOp_6*
dtype0*
_output_shapes
:

i
 training_2/SGD/ReadVariableOp_19ReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

x
training_2/SGD/add_3Add training_2/SGD/ReadVariableOp_19training_2/SGD/sub_3*
T0*
_output_shapes
:

f
!training_2/SGD/AssignVariableOp_7AssignVariableOpdense_3/biastraining_2/SGD/add_3*
dtype0

 training_2/SGD/ReadVariableOp_20ReadVariableOpdense_3/bias"^training_2/SGD/AssignVariableOp_7*
dtype0*
_output_shapes
:

ú
training_3/group_depsNoOp^loss_1/mul^metrics_1/acc/div_no_nan^training_2/SGD/ReadVariableOp!^training_2/SGD/ReadVariableOp_10!^training_2/SGD/ReadVariableOp_13!^training_2/SGD/ReadVariableOp_15!^training_2/SGD/ReadVariableOp_18!^training_2/SGD/ReadVariableOp_20 ^training_2/SGD/ReadVariableOp_3 ^training_2/SGD/ReadVariableOp_5 ^training_2/SGD/ReadVariableOp_8
\
VarIsInitializedOp_23VarIsInitializedOptraining_2/SGD/Variable*
_output_shapes
: 
^
VarIsInitializedOp_24VarIsInitializedOptraining_2/SGD/Variable_1*
_output_shapes
: 
^
VarIsInitializedOp_25VarIsInitializedOptraining_2/SGD/Variable_2*
_output_shapes
: 
S
VarIsInitializedOp_26VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_27VarIsInitializedOpdense_2/bias*
_output_shapes
: 
Q
VarIsInitializedOp_28VarIsInitializedOpdense_3/bias*
_output_shapes
: 
L
VarIsInitializedOp_29VarIsInitializedOptotal_1*
_output_shapes
: 
S
VarIsInitializedOp_30VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_31VarIsInitializedOpSGD/momentum*
_output_shapes
: 
K
VarIsInitializedOp_32VarIsInitializedOpSGD/lr*
_output_shapes
: 
S
VarIsInitializedOp_33VarIsInitializedOpSGD/iterations*
_output_shapes
: 
^
VarIsInitializedOp_34VarIsInitializedOptraining_2/SGD/Variable_3*
_output_shapes
: 
L
VarIsInitializedOp_35VarIsInitializedOpcount_1*
_output_shapes
: 
N
VarIsInitializedOp_36VarIsInitializedOp	SGD/decay*
_output_shapes
: 
ç
init_1NoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^count_1/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^total_1/Assign^training_2/SGD/Variable/Assign!^training_2/SGD/Variable_1/Assign!^training_2/SGD/Variable_2/Assign!^training_2/SGD/Variable_3/Assign"©fW´Q     û>DC	zq×AJ§£
ä#Ğ#
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
¹
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype*1.12.02unknownè·


)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
§
Adam/iterationsVarHandleOp*
shape: *
	container *"
_class
loc:@Adam/iterations*
_output_shapes
: * 
shared_nameAdam/iterations*
dtype0	
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

!Adam/lr/Initializer/initial_valueConst*
valueB
 *o:*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

Adam/lrVarHandleOp*
shape: *
	container *
_class
loc:@Adam/lr*
_output_shapes
: *
shared_name	Adam/lr*
dtype0
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*
_class
loc:@Adam/beta_1

Adam/beta_1VarHandleOp*
shape: *
	container *
_class
loc:@Adam/beta_1*
shared_nameAdam/beta_1*
_output_shapes
: *
dtype0
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *w¾?*
_class
loc:@Adam/beta_2

Adam/beta_2VarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@Adam/beta_2*
shared_nameAdam/beta_2*
_output_shapes
: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2

$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@Adam/decay*
_output_shapes
: *
shared_name
Adam/decay
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
_class
loc:@Adam/decay*
dtype0

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 
r
input_1Placeholder* 
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
L
ShapeShapeinput_1*
_output_shapes
:*
T0*
out_type0
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ù
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *
end_mask *
Index0*
new_axis_mask *
T0*
_output_shapes
: *

begin_mask 
Z
Reshape/shape/1Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
o
Reshape/shapePackstrided_sliceReshape/shape/1*

axis *
_output_shapes
:*
N*
T0
k
ReshapeReshapeinput_1Reshape/shape*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"     *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *¬\±½*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *¬\±=*
_class
loc:@dense/kernel
æ
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
seed2 *
T0*

seed *
_class
loc:@dense/kernel*
_output_shapes
:	*
dtype0
Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@dense/kernel
á
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes
:	
Ó
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
_output_shapes
:	*
T0
§
dense/kernelVarHandleOp*
shape:	*
	container *
_class
loc:@dense/kernel*
_output_shapes
: *
shared_namedense/kernel*
dtype0
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 

dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
_class
loc:@dense/kernel*
dtype0

 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:	

dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense/bias


dense/biasVarHandleOp*
dtype0*
shape:*
	container *
_class
loc:@dense/bias*
shared_name
dense/bias*
_output_shapes
: 
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
{
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:*
_class
loc:@dense/bias
c
MatMul/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0

MatMulMatMulReshapeMatMul/ReadVariableOp*
transpose_b( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
transpose_a( 
]
BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
{
BiasAddBiasAddMatMulBiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
G
ReluReluBiasAdd*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
\
keras_learning_phase/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
shape: *
dtype0
*
_output_shapes
: 
d
cond/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
_output_shapes
: *
T0

O
cond/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

f
cond/dropout/rateConst^cond/switch_t*
valueB
 *ÍÌÌ=*
dtype0*
_output_shapes
: 
m
cond/dropout/ShapeShapecond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0

cond/dropout/Shape/SwitchSwitchRelucond/pred_id*
T0*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
g
cond/dropout/sub/xConst^cond/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
_
cond/dropout/subSubcond/dropout/sub/xcond/dropout/rate*
_output_shapes
: *
T0
t
cond/dropout/random_uniform/minConst^cond/switch_t*
_output_shapes
: *
valueB
 *    *
dtype0
t
cond/dropout/random_uniform/maxConst^cond/switch_t*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¦
)cond/dropout/random_uniform/RandomUniformRandomUniformcond/dropout/Shape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
seed2 *
T0*

seed *
dtype0

cond/dropout/random_uniform/subSubcond/dropout/random_uniform/maxcond/dropout/random_uniform/min*
_output_shapes
: *
T0
¤
cond/dropout/random_uniform/mulMul)cond/dropout/random_uniform/RandomUniformcond/dropout/random_uniform/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond/dropout/random_uniformAddcond/dropout/random_uniform/mulcond/dropout/random_uniform/min*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
x
cond/dropout/addAddcond/dropout/subcond/dropout/random_uniform*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
_
cond/dropout/FloorFloorcond/dropout/add*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond/dropout/truedivRealDivcond/dropout/Shape/Switch:1cond/dropout/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
cond/dropout/mulMulcond/dropout/truedivcond/dropout/Floor*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
cond/IdentityIdentitycond/Identity/Switch*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

cond/Identity/SwitchSwitchRelucond/pred_id*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
q

cond/MergeMergecond/Identitycond/dropout/mul*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
N*
T0
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *!
_class
loc:@dense_1/kernel

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ôôõ¾*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: *
valueB
 *ôôõ>
ë
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*
_output_shapes

:
*
dtype0*
seed2 *

seed *
T0
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
è
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_1/kernel*
_output_shapes

:
*
T0
Ú
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes

:
*
T0
¬
dense_1/kernelVarHandleOp*
dtype0*
shape
:
*
	container *!
_class
loc:@dense_1/kernel*
shared_namedense_1/kernel*
_output_shapes
: 
m
/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/kernel*
_output_shapes
: 

dense_1/kernel/AssignAssignVariableOpdense_1/kernel)dense_1/kernel/Initializer/random_uniform*!
_class
loc:@dense_1/kernel*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:
*!
_class
loc:@dense_1/kernel*
dtype0

dense_1/bias/Initializer/zerosConst*
_output_shapes
:
*
valueB
*    *
_class
loc:@dense_1/bias*
dtype0
¢
dense_1/biasVarHandleOp*
dtype0*
shape:
*
	container *
_class
loc:@dense_1/bias*
_output_shapes
: *
shared_namedense_1/bias
i
-dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_1/bias*
_output_shapes
: 

dense_1/bias/AssignAssignVariableOpdense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

f
MatMul_1/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:


MatMul_1MatMul
cond/MergeMatMul_1/ReadVariableOp*
transpose_b( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
transpose_a( 
a
BiasAdd_1/ReadVariableOpReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:


	BiasAdd_1BiasAddMatMul_1BiasAdd_1/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
data_formatNHWC
O
SoftmaxSoftmax	BiasAdd_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


output_1_targetPlaceholder*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
R
ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:

output_1_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shape:ÿÿÿÿÿÿÿÿÿ
v
total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *
_class

loc:@total*
dtype0

totalVarHandleOp*
dtype0*
shape: *
	container *
_class

loc:@total*
_output_shapes
: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
_class

loc:@total*
dtype0
v
count/Initializer/zerosConst*
_class

loc:@count*
dtype0*
_output_shapes
: *
valueB
 *    

countVarHandleOp*
	container *
shape: *
_class

loc:@count*
_output_shapes
: *
shared_namecount*
dtype0
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
s
 loss/output_1_loss/Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
:

loss/output_1_loss/ReshapeReshapeoutput_1_target loss/output_1_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

loss/output_1_loss/CastCastloss/output_1_loss/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
s
"loss/output_1_loss/Reshape_1/shapeConst*
valueB"ÿÿÿÿ
   *
dtype0*
_output_shapes
:

loss/output_1_loss/Reshape_1Reshape	BiasAdd_1"loss/output_1_loss/Reshape_1/shape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
Tshape0

<loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/output_1_loss/Cast*
_output_shapes
:*
T0	*
out_type0

Zloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/output_1_loss/Reshape_1loss/output_1_loss/Cast*
Tlabels0	*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
*
T0

Gloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeoutput_1_sample_weights*
out_type0*
_output_shapes
:*
T0

Floss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
à
Floss/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*
_output_shapes
:*
T0

Eloss/output_1_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :

Eloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
ü
Closs/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarEqualEloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xFloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 

Oloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Ñ
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityQloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

Ï
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityOloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Â
Ploss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

í
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarPloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*V
_classL
JHloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0


oloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualvloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchxloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0

vloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchEloss/output_1_loss/broadcast_weights/assert_broadcastable/values/rankPloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*X
_classN
LJloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : *
T0

xloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchFloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankPloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
ø
iloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitcholoss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankoloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0


kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitykloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityiloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


jloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityoloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

¼
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
Ò
~loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
_output_shapes

:*
T0
°
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchFloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shapePloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape

loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchjloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::*
T0
Ã
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
´
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ì
}loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
¯
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Ä
zloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2~loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims}loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:
¾
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
Ù
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
_output_shapes

:*
T0*

Tdim0
´
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchGloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapePloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*Z
_classP
NLloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0

loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchjloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*Z
_classP
NLloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape

loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1zloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*
set_operationa-b*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:
Ï
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
out_type0*
_output_shapes
: *
T0
¥
uloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstl^loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 

sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualuloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
ú
kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switcholoss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*
_classx
vtloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
ÿ
hloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergekloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
N*
T0

Â
Nloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergehloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeSloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
N*
T0
*
_output_shapes
: : 
§
?loss/output_1_loss/broadcast_weights/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_2Const**
value!B Boutput_1_sample_weights:0*
dtype0*
_output_shapes
: 

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
Ş
Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_4Const*m
valuedBb B\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 

Aloss/output_1_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Lloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Ë
Nloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
É
Nloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityLloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Ê
Mloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
£
Jloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Xloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tK^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*a
_classW
USloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: *
T0


Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ó
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ş
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f**
value!B Boutput_1_sample_weights:0*
dtype0*
_output_shapes
: 
ò
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Á
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*m
valuedBb B\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
ï
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstO^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
valueB B
is_scalar=*
dtype0
Ó
Lloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertSloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Sloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchNloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*a
_classW
USloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge
ş
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchGloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Z
_classP
NLloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ü
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchFloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
î
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchCloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*V
_classL
JHloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0


Zloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityNloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fM^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*a
_classW
USloc:@loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
¶
Kloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeZloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Xloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
N*
T0
*
_output_shapes
: : 

4loss/output_1_loss/broadcast_weights/ones_like/ShapeShapeZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsL^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ç
4loss/output_1_loss/broadcast_weights/ones_like/ConstConstL^loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
â
.loss/output_1_loss/broadcast_weights/ones_likeFill4loss/output_1_loss/broadcast_weights/ones_like/Shape4loss/output_1_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¢
$loss/output_1_loss/broadcast_weightsMuloutput_1_sample_weights.loss/output_1_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Í
loss/output_1_loss/MulMulZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits$loss/output_1_loss/broadcast_weights*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
b
loss/output_1_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:

loss/output_1_loss/SumSumloss/output_1_loss/Mulloss/output_1_loss/Const*
T0*

Tidx0*
	keep_dims( *
_output_shapes
: 
d
loss/output_1_loss/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

loss/output_1_loss/Sum_1Sum$loss/output_1_loss/broadcast_weightsloss/output_1_loss/Const_1*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
|
loss/output_1_loss/div_no_nanDivNoNanloss/output_1_loss/Sumloss/output_1_loss/Sum_1*
_output_shapes
: *
T0
]
loss/output_1_loss/Const_2Const*
dtype0*
_output_shapes
: *
valueB 

loss/output_1_loss/MeanMeanloss/output_1_loss/div_no_nanloss/output_1_loss/Const_2*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
U
loss/mulMul
loss/mul/xloss/output_1_loss/Mean*
T0*
_output_shapes
: 

metrics/acc/CastCastoutput_1_target*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*

SrcT0*
Truncate( *

DstT0
~
metrics/acc/SqueezeSqueezemetrics/acc/Cast*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ
g
metrics/acc/ArgMax/dimensionConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxSoftmaxmetrics/acc/ArgMax/dimension*
T0*
output_type0	*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
metrics/acc/Cast_1Castmetrics/acc/ArgMax*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

SrcT0	*
Truncate( 
q
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
z
metrics/acc/Cast_2Castmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]
metrics/acc/SizeSizemetrics/acc/Cast_2*
_output_shapes
: *
T0*
out_type0
l
metrics/acc/Cast_3Castmetrics/acc/Size*
_output_shapes
: *

SrcT0*
Truncate( *

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/SumSummetrics/acc/Cast_2metrics/acc/Const*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0
z
metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp*
dtype0*
_output_shapes
: 
}
!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_3^metrics/acc/ReadVariableOp*
dtype0

metrics/acc/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1^metrics/acc/ReadVariableOp*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal^metrics/acc/ReadVariableOp_1*
_output_shapes
: *
dtype0

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount^metrics/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0

metrics/acc/Squeeze_1Squeezeoutput_1_target*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxSoftmaxmetrics/acc/ArgMax_1/dimension*
T0*
output_type0	*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
}
metrics/acc/Cast_4Castmetrics/acc/ArgMax_1*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
metrics/acc/Equal_1Equalmetrics/acc/Squeeze_1metrics/acc/Cast_4*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
|
metrics/acc/Cast_5Castmetrics/acc/Equal_1*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

SrcT0
*
Truncate( 
]
metrics/acc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

metrics/acc/MeanMeanmetrics/acc/Cast_5metrics/acc/Const_1*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
¶
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
¥
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/output_1_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss/mul

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
±
Btraining/Adam/gradients/loss/output_1_loss/Mean_grad/Reshape/shapeConst*
valueB **
_class 
loc:@loss/output_1_loss/Mean*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/output_1_loss/Mean_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Btraining/Adam/gradients/loss/output_1_loss/Mean_grad/Reshape/shape**
_class 
loc:@loss/output_1_loss/Mean*
Tshape0*
_output_shapes
: *
T0
©
:training/Adam/gradients/loss/output_1_loss/Mean_grad/ConstConst*
valueB **
_class 
loc:@loss/output_1_loss/Mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/output_1_loss/Mean_grad/TileTile<training/Adam/gradients/loss/output_1_loss/Mean_grad/Reshape:training/Adam/gradients/loss/output_1_loss/Mean_grad/Const*

Tmultiples0**
_class 
loc:@loss/output_1_loss/Mean*
_output_shapes
: *
T0
­
<training/Adam/gradients/loss/output_1_loss/Mean_grad/Const_1Const*
valueB
 *  ?**
_class 
loc:@loss/output_1_loss/Mean*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/output_1_loss/Mean_grad/truedivRealDiv9training/Adam/gradients/loss/output_1_loss/Mean_grad/Tile<training/Adam/gradients/loss/output_1_loss/Mean_grad/Const_1*
_output_shapes
: *
T0**
_class 
loc:@loss/output_1_loss/Mean
µ
@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ShapeConst*
valueB *0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
·
Btraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape_1Const*
valueB *0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
Ş
Ptraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgs@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ShapeBtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape_1*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
ü
Etraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nanDivNoNan<training/Adam/gradients/loss/output_1_loss/Mean_grad/truedivloss/output_1_loss/Sum_1*
_output_shapes
: *
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan
Î
>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/SumSumEtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nanPtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/BroadcastGradientArgs*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0
°
Btraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ReshapeReshape>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Sum@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape*
_output_shapes
: *
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
Tshape0
°
>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/NegNegloss/output_1_loss/Sum*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: 

Gtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_1DivNoNan>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Negloss/output_1_loss/Sum_1*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: *
T0

Gtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_2DivNoNanGtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_1loss/output_1_loss/Sum_1*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
_output_shapes
: *
T0

>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/mulMul<training/Adam/gradients/loss/output_1_loss/Mean_grad/truedivGtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan
Ë
@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Sum_1Sum>training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/mulRtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/BroadcastGradientArgs:1*
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
	keep_dims( *

Tidx0*
_output_shapes
: 
¶
Dtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Reshape_1Reshape@training/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Sum_1Btraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/Shape_1*
_output_shapes
: *
T0*0
_class&
$"loc:@loss/output_1_loss/div_no_nan*
Tshape0
¶
Atraining/Adam/gradients/loss/output_1_loss/Sum_grad/Reshape/shapeConst*
valueB:*)
_class
loc:@loss/output_1_loss/Sum*
dtype0*
_output_shapes
:
«
;training/Adam/gradients/loss/output_1_loss/Sum_grad/ReshapeReshapeBtraining/Adam/gradients/loss/output_1_loss/div_no_nan_grad/ReshapeAtraining/Adam/gradients/loss/output_1_loss/Sum_grad/Reshape/shape*)
_class
loc:@loss/output_1_loss/Sum*
Tshape0*
_output_shapes
:*
T0
º
9training/Adam/gradients/loss/output_1_loss/Sum_grad/ShapeShapeloss/output_1_loss/Mul*
T0*
out_type0*)
_class
loc:@loss/output_1_loss/Sum*
_output_shapes
:
£
8training/Adam/gradients/loss/output_1_loss/Sum_grad/TileTile;training/Adam/gradients/loss/output_1_loss/Sum_grad/Reshape9training/Adam/gradients/loss/output_1_loss/Sum_grad/Shape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*

Tmultiples0*)
_class
loc:@loss/output_1_loss/Sum
ş
9training/Adam/gradients/loss/output_1_loss/Mul_grad/ShapeShapeZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss/output_1_loss/Mul
Ê
;training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape_1Shape$loss/output_1_loss/broadcast_weights*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss/output_1_loss/Mul
Â
Itraining/Adam/gradients/loss/output_1_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape;training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape_1*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*)
_class
loc:@loss/output_1_loss/Mul
÷
7training/Adam/gradients/loss/output_1_loss/Mul_grad/MulMul8training/Adam/gradients/loss/output_1_loss/Sum_grad/Tile$loss/output_1_loss/broadcast_weights*)
_class
loc:@loss/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
­
7training/Adam/gradients/loss/output_1_loss/Mul_grad/SumSum7training/Adam/gradients/loss/output_1_loss/Mul_grad/MulItraining/Adam/gradients/loss/output_1_loss/Mul_grad/BroadcastGradientArgs*
T0*)
_class
loc:@loss/output_1_loss/Mul*
	keep_dims( *

Tidx0*
_output_shapes
:
¡
;training/Adam/gradients/loss/output_1_loss/Mul_grad/ReshapeReshape7training/Adam/gradients/loss/output_1_loss/Mul_grad/Sum9training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*)
_class
loc:@loss/output_1_loss/Mul*
Tshape0
¯
9training/Adam/gradients/loss/output_1_loss/Mul_grad/Mul_1MulZloss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits8training/Adam/gradients/loss/output_1_loss/Sum_grad/Tile*)
_class
loc:@loss/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
³
9training/Adam/gradients/loss/output_1_loss/Mul_grad/Sum_1Sum9training/Adam/gradients/loss/output_1_loss/Mul_grad/Mul_1Ktraining/Adam/gradients/loss/output_1_loss/Mul_grad/BroadcastGradientArgs:1*)
_class
loc:@loss/output_1_loss/Mul*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
§
=training/Adam/gradients/loss/output_1_loss/Mul_grad/Reshape_1Reshape9training/Adam/gradients/loss/output_1_loss/Mul_grad/Sum_1;training/Adam/gradients/loss/output_1_loss/Mul_grad/Shape_1*
T0*)
_class
loc:@loss/output_1_loss/Mul*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
®
"training/Adam/gradients/zeros_like	ZerosLike\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Ñ
training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient\loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*´
message¨¥Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Á
training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: 

training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims;training/Adam/gradients/loss/output_1_loss/Mul_grad/Reshapetraining/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
²
{training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*m
_classc
a_loc:@loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
¹
?training/Adam/gradients/loss/output_1_loss/Reshape_1_grad/ShapeShape	BiasAdd_1*
T0*
out_type0*/
_class%
#!loc:@loss/output_1_loss/Reshape_1*
_output_shapes
:
û
Atraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/ReshapeReshape{training/Adam/gradients/loss/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul?training/Adam/gradients/loss/output_1_loss/Reshape_1_grad/Shape*
T0*/
_class%
#!loc:@loss/output_1_loss/Reshape_1*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Ş
2training/Adam/gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradAtraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/Reshape*
T0*
data_formatNHWC*
_class
loc:@BiasAdd_1*
_output_shapes
:


,training/Adam/gradients/MatMul_1_grad/MatMulMatMulAtraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/ReshapeMatMul_1/ReadVariableOp*
transpose_b(*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
T0*
_class
loc:@MatMul_1
ó
.training/Adam/gradients/MatMul_1_grad/MatMul_1MatMul
cond/MergeAtraining/Adam/gradients/loss/output_1_loss/Reshape_1_grad/Reshape*
_class
loc:@MatMul_1*
transpose_b( *
_output_shapes

:
*
transpose_a(*
T0
Ù
1training/Adam/gradients/cond/Merge_grad/cond_gradSwitch,training/Adam/gradients/MatMul_1_grad/MatMulcond/pred_id*
_class
loc:@MatMul_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
¬
3training/Adam/gradients/cond/dropout/mul_grad/ShapeShapecond/dropout/truediv*
T0*
out_type0*#
_class
loc:@cond/dropout/mul*
_output_shapes
:
¬
5training/Adam/gradients/cond/dropout/mul_grad/Shape_1Shapecond/dropout/Floor*#
_class
loc:@cond/dropout/mul*
_output_shapes
:*
T0*
out_type0
ª
Ctraining/Adam/gradients/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3training/Adam/gradients/cond/dropout/mul_grad/Shape5training/Adam/gradients/cond/dropout/mul_grad/Shape_1*
T0*#
_class
loc:@cond/dropout/mul*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Ø
1training/Adam/gradients/cond/dropout/mul_grad/MulMul3training/Adam/gradients/cond/Merge_grad/cond_grad:1cond/dropout/Floor*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*#
_class
loc:@cond/dropout/mul

1training/Adam/gradients/cond/dropout/mul_grad/SumSum1training/Adam/gradients/cond/dropout/mul_grad/MulCtraining/Adam/gradients/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*#
_class
loc:@cond/dropout/mul*
	keep_dims( *

Tidx0*
_output_shapes
:

5training/Adam/gradients/cond/dropout/mul_grad/ReshapeReshape1training/Adam/gradients/cond/dropout/mul_grad/Sum3training/Adam/gradients/cond/dropout/mul_grad/Shape*
T0*#
_class
loc:@cond/dropout/mul*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ü
3training/Adam/gradients/cond/dropout/mul_grad/Mul_1Mulcond/dropout/truediv3training/Adam/gradients/cond/Merge_grad/cond_grad:1*#
_class
loc:@cond/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

3training/Adam/gradients/cond/dropout/mul_grad/Sum_1Sum3training/Adam/gradients/cond/dropout/mul_grad/Mul_1Etraining/Adam/gradients/cond/dropout/mul_grad/BroadcastGradientArgs:1*#
_class
loc:@cond/dropout/mul*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0

7training/Adam/gradients/cond/dropout/mul_grad/Reshape_1Reshape3training/Adam/gradients/cond/dropout/mul_grad/Sum_15training/Adam/gradients/cond/dropout/mul_grad/Shape_1*#
_class
loc:@cond/dropout/mul*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

training/Adam/gradients/SwitchSwitchRelucond/pred_id*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0

 training/Adam/gradients/IdentityIdentity training/Adam/gradients/Switch:1*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

training/Adam/gradients/Shape_1Shape training/Adam/gradients/Switch:1*
_output_shapes
:*
T0*
out_type0*
_class
	loc:@Relu
¤
#training/Adam/gradients/zeros/ConstConst!^training/Adam/gradients/Identity*
valueB
 *    *
_class
	loc:@Relu*
dtype0*
_output_shapes
: 
È
training/Adam/gradients/zerosFilltraining/Adam/gradients/Shape_1#training/Adam/gradients/zeros/Const*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*

index_type0
ì
;training/Adam/gradients/cond/Identity/Switch_grad/cond_gradMerge1training/Adam/gradients/cond/Merge_grad/cond_gradtraining/Adam/gradients/zeros*
_class
	loc:@Relu*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
T0*
N
»
7training/Adam/gradients/cond/dropout/truediv_grad/ShapeShapecond/dropout/Shape/Switch:1*
_output_shapes
:*
T0*
out_type0*'
_class
loc:@cond/dropout/truediv
¥
9training/Adam/gradients/cond/dropout/truediv_grad/Shape_1Const*
valueB *'
_class
loc:@cond/dropout/truediv*
dtype0*
_output_shapes
: 
º
Gtraining/Adam/gradients/cond/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs7training/Adam/gradients/cond/dropout/truediv_grad/Shape9training/Adam/gradients/cond/dropout/truediv_grad/Shape_1*
T0*'
_class
loc:@cond/dropout/truediv*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
è
9training/Adam/gradients/cond/dropout/truediv_grad/RealDivRealDiv5training/Adam/gradients/cond/dropout/mul_grad/Reshapecond/dropout/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*'
_class
loc:@cond/dropout/truediv
©
5training/Adam/gradients/cond/dropout/truediv_grad/SumSum9training/Adam/gradients/cond/dropout/truediv_grad/RealDivGtraining/Adam/gradients/cond/dropout/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0*'
_class
loc:@cond/dropout/truediv

9training/Adam/gradients/cond/dropout/truediv_grad/ReshapeReshape5training/Adam/gradients/cond/dropout/truediv_grad/Sum7training/Adam/gradients/cond/dropout/truediv_grad/Shape*
T0*'
_class
loc:@cond/dropout/truediv*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
5training/Adam/gradients/cond/dropout/truediv_grad/NegNegcond/dropout/Shape/Switch:1*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
ê
;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_1RealDiv5training/Adam/gradients/cond/dropout/truediv_grad/Negcond/dropout/sub*
T0*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ğ
;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_2RealDiv;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_1cond/dropout/sub*'
_class
loc:@cond/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

5training/Adam/gradients/cond/dropout/truediv_grad/mulMul5training/Adam/gradients/cond/dropout/mul_grad/Reshape;training/Adam/gradients/cond/dropout/truediv_grad/RealDiv_2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*'
_class
loc:@cond/dropout/truediv
©
7training/Adam/gradients/cond/dropout/truediv_grad/Sum_1Sum5training/Adam/gradients/cond/dropout/truediv_grad/mulItraining/Adam/gradients/cond/dropout/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0*'
_class
loc:@cond/dropout/truediv

;training/Adam/gradients/cond/dropout/truediv_grad/Reshape_1Reshape7training/Adam/gradients/cond/dropout/truediv_grad/Sum_19training/Adam/gradients/cond/dropout/truediv_grad/Shape_1*'
_class
loc:@cond/dropout/truediv*
Tshape0*
_output_shapes
: *
T0

 training/Adam/gradients/Switch_1SwitchRelucond/pred_id*
T0*
_class
	loc:@Relu*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

"training/Adam/gradients/Identity_1Identity training/Adam/gradients/Switch_1*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

training/Adam/gradients/Shape_2Shape training/Adam/gradients/Switch_1*
_class
	loc:@Relu*
_output_shapes
:*
T0*
out_type0
¨
%training/Adam/gradients/zeros_1/ConstConst#^training/Adam/gradients/Identity_1*
valueB
 *    *
_class
	loc:@Relu*
dtype0*
_output_shapes
: 
Ì
training/Adam/gradients/zeros_1Filltraining/Adam/gradients/Shape_2%training/Adam/gradients/zeros_1/Const*
_class
	loc:@Relu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*

index_type0
û
@training/Adam/gradients/cond/dropout/Shape/Switch_grad/cond_gradMergetraining/Adam/gradients/zeros_19training/Adam/gradients/cond/dropout/truediv_grad/Reshape*
_class
	loc:@Relu*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
T0*
N
÷
training/Adam/gradients/AddNAddN;training/Adam/gradients/cond/Identity/Switch_grad/cond_grad@training/Adam/gradients/cond/dropout/Shape/Switch_grad/cond_grad*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
N*
_class
	loc:@Relu
¥
*training/Adam/gradients/Relu_grad/ReluGradReluGradtraining/Adam/gradients/AddNRelu*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
_class
	loc:@Relu
Ã
0training/Adam/gradients/BiasAdd_grad/BiasAddGradBiasAddGrad*training/Adam/gradients/Relu_grad/ReluGrad*
_output_shapes
:*
T0*
data_formatNHWC*
_class
loc:@BiasAdd
ë
*training/Adam/gradients/MatMul_grad/MatMulMatMul*training/Adam/gradients/Relu_grad/ReluGradMatMul/ReadVariableOp*
transpose_b(*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
T0*
_class
loc:@MatMul
Ö
,training/Adam/gradients/MatMul_grad/MatMul_1MatMulReshape*training/Adam/gradients/Relu_grad/ReluGrad*
transpose_a(*
T0*
_class
loc:@MatMul*
transpose_b( *
_output_shapes
:	
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 

!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations^training/Adam/ReadVariableOp*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

DstT0*
_output_shapes
: *

SrcT0	*
Truncate( 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
o
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/Cast*
_output_shapes
: *
T0
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
_output_shapes
: *
T0
Z
training/Adam/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
_output_shapes
: *
T0

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
s
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/Cast*
_output_shapes
: *
T0
Z
training/Adam/sub_1/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
_output_shapes
: *
T0
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
_output_shapes
: *
T0
t
#training/Adam/zeros/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
^
training/Adam/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zerosFill#training/Adam/zeros/shape_as_tensortraining/Adam/zeros/Const*

index_type0*
_output_shapes
:	*
T0
Å
training/Adam/VariableVarHandleOp*
dtype0*
shape:	*
	container *)
_class
loc:@training/Adam/Variable*
_output_shapes
: *'
shared_nametraining/Adam/Variable
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
­
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*
_output_shapes
:	*)
_class
loc:@training/Adam/Variable*
dtype0
b
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
Æ
training/Adam/Variable_1VarHandleOp*
dtype0*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_1*)
shared_nametraining/Adam/Variable_1*
_output_shapes
: 

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*
dtype0*+
_class!
loc:@training/Adam/Variable_1
®
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
:
j
training/Adam/zeros_2Const*
_output_shapes

:
*
valueB
*    *
dtype0
Ê
training/Adam/Variable_2VarHandleOp*
dtype0*
shape
:
*
	container *+
_class!
loc:@training/Adam/Variable_2*
_output_shapes
: *)
shared_nametraining/Adam/Variable_2

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0
²
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*
_output_shapes

:

b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
:
*
valueB
*    
Æ
training/Adam/Variable_3VarHandleOp*
dtype0*
shape:
*
	container *+
_class!
loc:@training/Adam/Variable_3*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
®
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
:

v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*

index_type0*
_output_shapes
:	*
T0
Ë
training/Adam/Variable_4VarHandleOp*
	container *
shape:	*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4*
dtype0

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
³
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
:	
b
training/Adam/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:
Æ
training/Adam/Variable_5VarHandleOp*
dtype0*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
®
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
:
j
training/Adam/zeros_6Const*
dtype0*
_output_shapes

:
*
valueB
*    
Ê
training/Adam/Variable_6VarHandleOp*
dtype0*
	container *
shape
:
*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*
dtype0*+
_class!
loc:@training/Adam/Variable_6
²
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes

:
*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueB
*    *
dtype0*
_output_shapes
:

Æ
training/Adam/Variable_7VarHandleOp*
dtype0*
shape:
*
	container *+
_class!
loc:@training/Adam/Variable_7*)
shared_nametraining/Adam/Variable_7*
_output_shapes
: 

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0
®
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
:

o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:
Æ
training/Adam/Variable_8VarHandleOp*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8*
dtype0

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0
®
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
_output_shapes
:*+
_class!
loc:@training/Adam/Variable_8*
dtype0
o
%training/Adam/zeros_9/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:
Æ
training/Adam/Variable_9VarHandleOp*
dtype0*
shape:*
	container *+
_class!
loc:@training/Adam/Variable_9*)
shared_nametraining/Adam/Variable_9*
_output_shapes
: 

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0
®
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_10VarHandleOp*
shape:*
	container *,
_class"
 loc:@training/Adam/Variable_10*
_output_shapes
: **
shared_nametraining/Adam/Variable_10*
dtype0

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
¢
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0
±
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_11VarHandleOp*
shape:*
	container *,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
: **
shared_nametraining/Adam/Variable_11*
dtype0

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
¢
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0
±
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
:
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
z
"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*
_output_shapes
:	

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*
_output_shapes
:	
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
_output_shapes
: *
T0

training/Adam/mul_2Multraining/Adam/sub_2,training/Adam/gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
l
training/Adam/addAddtraining/Adam/mul_1training/Adam/mul_2*
_output_shapes
:	*
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
|
"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0*
_output_shapes
:	

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*
_output_shapes
:	
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0
v
training/Adam/SquareSquare,training/Adam/gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
o
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
_output_shapes
:	*
T0
n
training/Adam/add_1Addtraining/Adam/mul_3training/Adam/mul_4*
_output_shapes
:	*
T0
j
training/Adam/mul_5Multraining/Adam/multraining/Adam/add*
_output_shapes
:	*
T0
Z
training/Adam/Const_3Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_1training/Adam/Const_4*
T0*
_output_shapes
:	

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0*
_output_shapes
:	
e
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*
_output_shapes
:	
Z
training/Adam/add_2/yConst*
valueB
 *¿Ö3*
dtype0*
_output_shapes
: 
q
training/Adam/add_2Addtraining/Adam/Sqrt_1training/Adam/add_2/y*
_output_shapes
:	*
T0
v
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_2*
T0*
_output_shapes
:	
l
training/Adam/ReadVariableOp_6ReadVariableOpdense/kernel*
_output_shapes
:	*
dtype0
}
training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
_output_shapes
:	*
T0
j
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*
_output_shapes
:	
p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_4training/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_4!^training/Adam/AssignVariableOp_1*
dtype0*
_output_shapes
:	
d
 training/Adam/AssignVariableOp_2AssignVariableOpdense/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpdense/kernel!^training/Adam/AssignVariableOp_2*
_output_shapes
:	*
dtype0
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
_output_shapes
:*
dtype0

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
_output_shapes
: *
T0

training/Adam/mul_7Multraining/Adam/sub_50training/Adam/gradients/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
i
training/Adam/add_3Addtraining/Adam/mul_6training/Adam/mul_7*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes
:

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
_output_shapes
:*
T0
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0
w
training/Adam/Square_1Square0training/Adam/gradients/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
:*
T0
i
training/Adam/add_4Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_3*
_output_shapes
:*
T0
Z
training/Adam/Const_5Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_6Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_4training/Adam/Const_6*
_output_shapes
:*
T0

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
T0*
_output_shapes
:
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:
Z
training/Adam/add_5/yConst*
valueB
 *¿Ö3*
dtype0*
_output_shapes
: 
l
training/Adam/add_5Addtraining/Adam/Sqrt_2training/Adam/add_5/y*
_output_shapes
:*
T0
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_5*
T0*
_output_shapes
:
f
training/Adam/ReadVariableOp_14ReadVariableOp
dense/bias*
dtype0*
_output_shapes
:
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_3*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
:
p
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_5training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_5!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
:
b
 training/Adam/AssignVariableOp_5AssignVariableOp
dense/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOp
dense/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
:
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
|
#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*
_output_shapes

:


training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_8.training/Adam/gradients/MatMul_1_grad/MatMul_1*
T0*
_output_shapes

:

o
training/Adam/add_6Addtraining/Adam/mul_11training/Adam/mul_12*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
|
#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes

:


training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
_output_shapes

:
*
T0
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
_output_shapes
: *
T0
y
training/Adam/Square_2Square.training/Adam/gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:
*
T0
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:
*
T0
o
training/Adam/add_7Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

:
*
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_6*
_output_shapes

:
*
T0
Z
training/Adam/Const_7Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_8Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_7training/Adam/Const_8*
_output_shapes

:
*
T0

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*
_output_shapes

:
*
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes

:
*
T0
Z
training/Adam/add_8/yConst*
valueB
 *¿Ö3*
dtype0*
_output_shapes
: 
p
training/Adam/add_8Addtraining/Adam/Sqrt_3training/Adam/add_8/y*
_output_shapes

:
*
T0
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_8*
_output_shapes

:
*
T0
n
training/Adam/ReadVariableOp_22ReadVariableOpdense_1/kernel*
dtype0*
_output_shapes

:

~
training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
_output_shapes

:
*
T0
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_6*
dtype0

training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*
_output_shapes

:

p
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_6training/Adam/add_7*
dtype0

training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_6!^training/Adam/AssignVariableOp_7*
dtype0*
_output_shapes

:

g
 training/Adam/AssignVariableOp_8AssignVariableOpdense_1/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpdense_1/kernel!^training/Adam/AssignVariableOp_8*
dtype0*
_output_shapes

:

c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes
:


training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_112training/Adam/gradients/BiasAdd_1_grad/BiasAddGrad*
T0*
_output_shapes
:

k
training/Adam/add_9Addtraining/Adam/mul_16training/Adam/mul_17*
_output_shapes
:
*
T0
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:


training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
:

c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 
y
training/Adam/Square_3Square2training/Adam/gradients/BiasAdd_1_grad/BiasAddGrad*
_output_shapes
:
*
T0
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
_output_shapes
:
*
T0
l
training/Adam/add_10Addtraining/Adam/mul_18training/Adam/mul_19*
_output_shapes
:
*
T0
h
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_9*
_output_shapes
:
*
T0
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_10training/Adam/Const_10*
_output_shapes
:
*
T0

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
:

`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:

[
training/Adam/add_11/yConst*
_output_shapes
: *
valueB
 *¿Ö3*
dtype0
n
training/Adam/add_11Addtraining/Adam/Sqrt_4training/Adam/add_11/y*
_output_shapes
:
*
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_11*
_output_shapes
:
*
T0
h
training/Adam/ReadVariableOp_30ReadVariableOpdense_1/bias*
dtype0*
_output_shapes
:

z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
:
*
T0
p
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_9*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
:

r
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_7training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
:

f
!training/Adam/AssignVariableOp_11AssignVariableOpdense_1/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpdense_1/bias"^training/Adam/AssignVariableOp_11*
_output_shapes
:
*
dtype0
Ö
training_1/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
Z
VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
N
VarIsInitializedOp_1VarIsInitializedOp
Adam/decay*
_output_shapes
: 
P
VarIsInitializedOp_2VarIsInitializedOpdense/kernel*
_output_shapes
: 
\
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
\
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
\
VarIsInitializedOp_5VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
\
VarIsInitializedOp_6VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
R
VarIsInitializedOp_7VarIsInitializedOpdense_1/kernel*
_output_shapes
: 
]
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
S
VarIsInitializedOp_9VarIsInitializedOpAdam/iterations*
_output_shapes
: 
Q
VarIsInitializedOp_10VarIsInitializedOpdense_1/bias*
_output_shapes
: 
J
VarIsInitializedOp_11VarIsInitializedOpcount*
_output_shapes
: 
J
VarIsInitializedOp_12VarIsInitializedOptotal*
_output_shapes
: 
^
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
P
VarIsInitializedOp_14VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
]
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
]
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
O
VarIsInitializedOp_17VarIsInitializedOp
dense/bias*
_output_shapes
: 
L
VarIsInitializedOp_18VarIsInitializedOpAdam/lr*
_output_shapes
: 
P
VarIsInitializedOp_19VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
[
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
]
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
]
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^count/Assign^dense/bias/Assign^dense/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^total/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
L
PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
E
AssignVariableOpAssignVariableOptotalPlaceholder*
dtype0
_
ReadVariableOpReadVariableOptotal^AssignVariableOp*
dtype0*
_output_shapes
: 
N
Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 
I
AssignVariableOp_1AssignVariableOpcountPlaceholder_1*
dtype0
c
ReadVariableOp_1ReadVariableOpcount^AssignVariableOp_1*
dtype0*
_output_shapes
: 
A
evaluation/group_depsNoOp	^loss/mul^metrics/acc/div_no_nan

(SGD/iterations/Initializer/initial_valueConst*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: *
value	B	 R 
¤
SGD/iterationsVarHandleOp*
shape: *
	container *!
_class
loc:@SGD/iterations*
_output_shapes
: *
shared_nameSGD/iterations*
dtype0	
m
/SGD/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/iterations*
_output_shapes
: 

SGD/iterations/AssignAssignVariableOpSGD/iterations(SGD/iterations/Initializer/initial_value*!
_class
loc:@SGD/iterations*
dtype0	

"SGD/iterations/Read/ReadVariableOpReadVariableOpSGD/iterations*!
_class
loc:@SGD/iterations*
dtype0	*
_output_shapes
: 

 SGD/lr/Initializer/initial_valueConst*
valueB
 *
×#<*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

SGD/lrVarHandleOp*
shape: *
	container *
_class
loc:@SGD/lr*
_output_shapes
: *
shared_nameSGD/lr*
dtype0
]
'SGD/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/lr*
_output_shapes
: 
s
SGD/lr/AssignAssignVariableOpSGD/lr SGD/lr/Initializer/initial_value*
_class
loc:@SGD/lr*
dtype0
t
SGD/lr/Read/ReadVariableOpReadVariableOpSGD/lr*
_class
loc:@SGD/lr*
dtype0*
_output_shapes
: 

&SGD/momentum/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

SGD/momentumVarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@SGD/momentum*
_output_shapes
: *
shared_nameSGD/momentum
i
-SGD/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpSGD/momentum*
_output_shapes
: 

SGD/momentum/AssignAssignVariableOpSGD/momentum&SGD/momentum/Initializer/initial_value*
_class
loc:@SGD/momentum*
dtype0

 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

#SGD/decay/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@SGD/decay

	SGD/decayVarHandleOp*
shape: *
	container *
_class
loc:@SGD/decay*
_output_shapes
: *
shared_name	SGD/decay*
dtype0
c
*SGD/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp	SGD/decay*
_output_shapes
: 

SGD/decay/AssignAssignVariableOp	SGD/decay#SGD/decay/Initializer/initial_value*
_class
loc:@SGD/decay*
dtype0
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
_class
loc:@SGD/decay*
dtype0
t
	input_1_1Placeholder* 
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
P
Shape_1Shape	input_1_1*
T0*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
new_axis_mask *
T0*
_output_shapes
: *

begin_mask *
shrink_axis_mask*
ellipsis_mask *
end_mask 
\
Reshape_1/shape/1Const*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
u
Reshape_1/shapePackstrided_slice_1Reshape_1/shape/1*

axis *
_output_shapes
:*
N*
T0
q
	Reshape_1Reshape	input_1_1Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"     *!
_class
loc:@dense_2/kernel

-dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *¬\±½*!
_class
loc:@dense_2/kernel

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *¬\±=*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
ì
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_2/kernel*
_output_shapes
:	*
dtype0*
seed2 *
T0*

seed 
Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
é
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_2/kernel*
_output_shapes
:	*
T0
Û
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
­
dense_2/kernelVarHandleOp*
dtype0*
shape:	*
	container *!
_class
loc:@dense_2/kernel*
_output_shapes
: *
shared_namedense_2/kernel
m
/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/kernel*
_output_shapes
: 

dense_2/kernel/AssignAssignVariableOpdense_2/kernel)dense_2/kernel/Initializer/random_uniform*!
_class
loc:@dense_2/kernel*
dtype0

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:	

dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense_2/bias
¢
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
_output_shapes
: *
dtype0*
shape:*
	container *
_class
loc:@dense_2/bias
i
-dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_2/bias*
_output_shapes
: 

dense_2/bias/AssignAssignVariableOpdense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:
g
MatMul_2/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	

MatMul_2MatMul	Reshape_1MatMul_2/ReadVariableOp*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
a
BiasAdd_2/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:

	BiasAdd_2BiasAddMatMul_2BiasAdd_2/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
K
Relu_1Relu	BiasAdd_2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
f
cond_1/SwitchSwitchkeras_learning_phasekeras_learning_phase*
_output_shapes
: : *
T0

M
cond_1/switch_tIdentitycond_1/Switch:1*
_output_shapes
: *
T0

K
cond_1/switch_fIdentitycond_1/Switch*
_output_shapes
: *
T0

Q
cond_1/pred_idIdentitykeras_learning_phase*
_output_shapes
: *
T0

j
cond_1/dropout/rateConst^cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *ÍÌÌ=
q
cond_1/dropout/ShapeShapecond_1/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:

cond_1/dropout/Shape/SwitchSwitchRelu_1cond_1/pred_id*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*
_class
loc:@Relu_1
k
cond_1/dropout/sub/xConst^cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *  ?
e
cond_1/dropout/subSubcond_1/dropout/sub/xcond_1/dropout/rate*
_output_shapes
: *
T0
x
!cond_1/dropout/random_uniform/minConst^cond_1/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
x
!cond_1/dropout/random_uniform/maxConst^cond_1/switch_t*
_output_shapes
: *
valueB
 *  ?*
dtype0
ª
+cond_1/dropout/random_uniform/RandomUniformRandomUniformcond_1/dropout/Shape*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
seed2 *
T0*

seed *
dtype0

!cond_1/dropout/random_uniform/subSub!cond_1/dropout/random_uniform/max!cond_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
ª
!cond_1/dropout/random_uniform/mulMul+cond_1/dropout/random_uniform/RandomUniform!cond_1/dropout/random_uniform/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

cond_1/dropout/random_uniformAdd!cond_1/dropout/random_uniform/mul!cond_1/dropout/random_uniform/min*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
~
cond_1/dropout/addAddcond_1/dropout/subcond_1/dropout/random_uniform*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
c
cond_1/dropout/FloorFloorcond_1/dropout/add*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond_1/dropout/truedivRealDivcond_1/dropout/Shape/Switch:1cond_1/dropout/sub*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
y
cond_1/dropout/mulMulcond_1/dropout/truedivcond_1/dropout/Floor*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
e
cond_1/IdentityIdentitycond_1/Identity/Switch*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

cond_1/Identity/SwitchSwitchRelu_1cond_1/pred_id*
T0*
_class
loc:@Relu_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
w
cond_1/MergeMergecond_1/Identitycond_1/dropout/mul*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
N*
T0
£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: *
valueB
 *ôôõ¾

-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *ôôõ>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
ë
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:

Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
è
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
_output_shapes

:
*
T0
Ú
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_3/kernel*
_output_shapes

:
*
T0
¬
dense_3/kernelVarHandleOp*
shape
:
*
	container *!
_class
loc:@dense_3/kernel*
_output_shapes
: *
shared_namedense_3/kernel*
dtype0
m
/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/kernel*
_output_shapes
: 

dense_3/kernel/AssignAssignVariableOpdense_3/kernel)dense_3/kernel/Initializer/random_uniform*!
_class
loc:@dense_3/kernel*
dtype0

"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:


dense_3/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

¢
dense_3/biasVarHandleOp*
_output_shapes
: *
shared_namedense_3/bias*
dtype0*
shape:
*
	container *
_class
loc:@dense_3/bias
i
-dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_3/bias*
_output_shapes
: 

dense_3/bias/AssignAssignVariableOpdense_3/biasdense_3/bias/Initializer/zeros*
_class
loc:@dense_3/bias*
dtype0

 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:

f
MatMul_3/ReadVariableOpReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:


MatMul_3MatMulcond_1/MergeMatMul_3/ReadVariableOp*
transpose_b( *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
transpose_a( 
a
BiasAdd_3/ReadVariableOpReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:


	BiasAdd_3BiasAddMatMul_3BiasAdd_3/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*
data_formatNHWC
Q
	Softmax_1Softmax	BiasAdd_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


output_1_target_1Placeholder*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
T
Const_1Const*
valueB*  ?*
dtype0*
_output_shapes
:

output_1_sample_weights_1PlaceholderWithDefaultConst_1*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
z
total_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@total_1*
dtype0*
_output_shapes
: 

total_1VarHandleOp*
shape: *
	container *
_class
loc:@total_1*
_output_shapes
: *
shared_name	total_1*
dtype0
_
(total_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal_1*
_output_shapes
: 
o
total_1/AssignAssignVariableOptotal_1total_1/Initializer/zeros*
_class
loc:@total_1*
dtype0
w
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
_class
loc:@total_1*
dtype0
z
count_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@count_1*
dtype0*
_output_shapes
: 

count_1VarHandleOp*
dtype0*
shape: *
	container *
_class
loc:@count_1*
shared_name	count_1*
_output_shapes
: 
_
(count_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount_1*
_output_shapes
: 
o
count_1/AssignAssignVariableOpcount_1count_1/Initializer/zeros*
_class
loc:@count_1*
dtype0
w
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_class
loc:@count_1*
dtype0*
_output_shapes
: 
u
"loss_1/output_1_loss/Reshape/shapeConst*
_output_shapes
:*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0

loss_1/output_1_loss/ReshapeReshapeoutput_1_target_1"loss_1/output_1_loss/Reshape/shape*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

loss_1/output_1_loss/CastCastloss_1/output_1_loss/Reshape*

SrcT0*
Truncate( *

DstT0	*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
u
$loss_1/output_1_loss/Reshape_1/shapeConst*
valueB"ÿÿÿÿ
   *
dtype0*
_output_shapes
:

loss_1/output_1_loss/Reshape_1Reshape	BiasAdd_3$loss_1/output_1_loss/Reshape_1/shape*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0

>loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss_1/output_1_loss/Cast*
_output_shapes
:*
T0	*
out_type0

\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss_1/output_1_loss/Reshape_1loss_1/output_1_loss/Cast*
Tlabels0	*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
*
T0
¢
Iloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeShapeoutput_1_sample_weights_1*
T0*
out_type0*
_output_shapes
:

Hloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
ä
Hloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeShape\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0

Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 

Eloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarEqualGloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar/xHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: *
T0

Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Õ
Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentitySloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ó
Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityQloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Æ
Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
õ
Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0
*X
_classN
LJloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar

qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualxloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchzloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0

xloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchGloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rankRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*Z
_classP
NLloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rank
¢
zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rankRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ş
kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 

mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitymloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0


mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentitykloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0


lloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

À
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ
Ù
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*

Tdim0*
_output_shapes

:
¸
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape

loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchlloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ç
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
¸
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ò
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
´
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Î
|loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*

Tidx0*
_output_shapes

:*
N*
T0
Â
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 
ß
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
_output_shapes

:*
T0
¼
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchIloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeRloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*\
_classR
PNloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape

loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchlloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*\
_classR
PNloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0
¥
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1|loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
T0*
set_operationa-b*<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:*
validate_indices(
Ó
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
©
wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstn^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
¡
uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualwloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 

mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchqloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_ranklloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*
_classz
xvloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank

jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergemloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
N*
T0

È
Ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergejloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeUloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
_output_shapes
: : *
N*
T0

©
Aloss_1/output_1_loss/broadcast_weights/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_1Const*
dtype0*
_output_shapes
: *
valueB Bweights.shape=

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_2Const*,
value#B! Boutput_1_sample_weights_1:0*
dtype0*
_output_shapes
: 

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
â
Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_4Const*o
valuefBd B^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 

Closs_1/output_1_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergePloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Ï
Ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Í
Ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityNloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
Î
Oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

§
Lloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tM^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*c
_classY
WUloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
÷
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *,
value#B! Boutput_1_sample_weights_1:0
ö
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ç
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*o
valuefBd B^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
ó
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstQ^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
é
Nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertUloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchUloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*c
_classY
WUloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 

Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchIloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shapeOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*\
_classR
PNloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::*
T0

Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchHloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shapeOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*[
_classQ
OMloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape
ö
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchEloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalarOloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*X
_classN
LJloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

\loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityPloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fO^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
_output_shapes
: *
T0
*c
_classY
WUloc:@loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f
¼
Mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMerge\loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
_output_shapes
: : *
N*
T0

¢
6loss_1/output_1_loss/broadcast_weights/ones_like/ShapeShape\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsN^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ë
6loss_1/output_1_loss/broadcast_weights/ones_like/ConstConstN^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  ?
è
0loss_1/output_1_loss/broadcast_weights/ones_likeFill6loss_1/output_1_loss/broadcast_weights/ones_like/Shape6loss_1/output_1_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*

index_type0
¨
&loss_1/output_1_loss/broadcast_weightsMuloutput_1_sample_weights_10loss_1/output_1_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ó
loss_1/output_1_loss/MulMul\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits&loss_1/output_1_loss/broadcast_weights*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
d
loss_1/output_1_loss/ConstConst*
_output_shapes
:*
valueB: *
dtype0

loss_1/output_1_loss/SumSumloss_1/output_1_loss/Mulloss_1/output_1_loss/Const*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
f
loss_1/output_1_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
¥
loss_1/output_1_loss/Sum_1Sum&loss_1/output_1_loss/broadcast_weightsloss_1/output_1_loss/Const_1*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0

loss_1/output_1_loss/div_no_nanDivNoNanloss_1/output_1_loss/Sumloss_1/output_1_loss/Sum_1*
_output_shapes
: *
T0
_
loss_1/output_1_loss/Const_2Const*
valueB *
dtype0*
_output_shapes
: 

loss_1/output_1_loss/MeanMeanloss_1/output_1_loss/div_no_nanloss_1/output_1_loss/Const_2*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
Q
loss_1/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[

loss_1/mulMulloss_1/mul/xloss_1/output_1_loss/Mean*
T0*
_output_shapes
: 

metrics_1/acc/CastCastoutput_1_target_1*

SrcT0*
Truncate( *

DstT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

metrics_1/acc/SqueezeSqueezemetrics_1/acc/Cast*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
i
metrics_1/acc/ArgMax/dimensionConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0*
_output_shapes
: 

metrics_1/acc/ArgMaxArgMax	Softmax_1metrics_1/acc/ArgMax/dimension*
output_type0	*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

metrics_1/acc/Cast_1Castmetrics_1/acc/ArgMax*

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

SrcT0	*
Truncate( 
w
metrics_1/acc/EqualEqualmetrics_1/acc/Squeezemetrics_1/acc/Cast_1*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
~
metrics_1/acc/Cast_2Castmetrics_1/acc/Equal*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

SrcT0
*
Truncate( *

DstT0
a
metrics_1/acc/SizeSizemetrics_1/acc/Cast_2*
T0*
out_type0*
_output_shapes
: 
p
metrics_1/acc/Cast_3Castmetrics_1/acc/Size*

SrcT0*
Truncate( *

DstT0*
_output_shapes
: 
]
metrics_1/acc/ConstConst*
_output_shapes
:*
valueB: *
dtype0

metrics_1/acc/SumSummetrics_1/acc/Cast_2metrics_1/acc/Const*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
a
!metrics_1/acc/AssignAddVariableOpAssignAddVariableOptotal_1metrics_1/acc/Sum*
dtype0

metrics_1/acc/ReadVariableOpReadVariableOptotal_1"^metrics_1/acc/AssignAddVariableOp*
dtype0*
_output_shapes
: 

#metrics_1/acc/AssignAddVariableOp_1AssignAddVariableOpcount_1metrics_1/acc/Cast_3^metrics_1/acc/ReadVariableOp*
dtype0
£
metrics_1/acc/ReadVariableOp_1ReadVariableOpcount_1$^metrics_1/acc/AssignAddVariableOp_1^metrics_1/acc/ReadVariableOp*
dtype0*
_output_shapes
: 

'metrics_1/acc/div_no_nan/ReadVariableOpReadVariableOptotal_1^metrics_1/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

)metrics_1/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount_1^metrics_1/acc/ReadVariableOp_1*
dtype0*
_output_shapes
: 

metrics_1/acc/div_no_nanDivNoNan'metrics_1/acc/div_no_nan/ReadVariableOp)metrics_1/acc/div_no_nan/ReadVariableOp_1*
_output_shapes
: *
T0

metrics_1/acc/Squeeze_1Squeezeoutput_1_target_1*
T0*
squeeze_dims

ÿÿÿÿÿÿÿÿÿ*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
k
 metrics_1/acc/ArgMax_1/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ

metrics_1/acc/ArgMax_1ArgMax	Softmax_1 metrics_1/acc/ArgMax_1/dimension*
T0*
output_type0	*

Tidx0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

metrics_1/acc/Cast_4Castmetrics_1/acc/ArgMax_1*

SrcT0	*
Truncate( *

DstT0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
{
metrics_1/acc/Equal_1Equalmetrics_1/acc/Squeeze_1metrics_1/acc/Cast_4*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

metrics_1/acc/Cast_5Castmetrics_1/acc/Equal_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

SrcT0
*
Truncate( *

DstT0
_
metrics_1/acc/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

metrics_1/acc/MeanMeanmetrics_1/acc/Cast_5metrics_1/acc/Const_1*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0

training_2/SGD/gradients/ShapeConst*
valueB *
_class
loc:@loss_1/mul*
dtype0*
_output_shapes
: 

"training_2/SGD/gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?*
_class
loc:@loss_1/mul
»
training_2/SGD/gradients/FillFilltraining_2/SGD/gradients/Shape"training_2/SGD/gradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0*
_class
loc:@loss_1/mul
­
,training_2/SGD/gradients/loss_1/mul_grad/MulMultraining_2/SGD/gradients/Fillloss_1/output_1_loss/Mean*
_class
loc:@loss_1/mul*
_output_shapes
: *
T0
¢
.training_2/SGD/gradients/loss_1/mul_grad/Mul_1Multraining_2/SGD/gradients/Fillloss_1/mul/x*
_class
loc:@loss_1/mul*
_output_shapes
: *
T0
¶
Etraining_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Reshape/shapeConst*
valueB *,
_class"
 loc:@loss_1/output_1_loss/Mean*
dtype0*
_output_shapes
: 

?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/ReshapeReshape.training_2/SGD/gradients/loss_1/mul_grad/Mul_1Etraining_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Reshape/shape*
T0*,
_class"
 loc:@loss_1/output_1_loss/Mean*
Tshape0*
_output_shapes
: 
®
=training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/ConstConst*
valueB *,
_class"
 loc:@loss_1/output_1_loss/Mean*
dtype0*
_output_shapes
: 
¥
<training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/TileTile?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Reshape=training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Const*

Tmultiples0*,
_class"
 loc:@loss_1/output_1_loss/Mean*
_output_shapes
: *
T0
²
?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Const_1Const*
valueB
 *  ?*,
_class"
 loc:@loss_1/output_1_loss/Mean*
dtype0*
_output_shapes
: 

?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/truedivRealDiv<training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Tile?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/Const_1*,
_class"
 loc:@loss_1/output_1_loss/Mean*
_output_shapes
: *
T0
º
Ctraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ShapeConst*
valueB *2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
¼
Etraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape_1Const*
valueB *2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
dtype0*
_output_shapes
: 
é
Straining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ShapeEtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape_1*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan

Htraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nanDivNoNan?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/truedivloss_1/output_1_loss/Sum_1*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: 
Ù
Atraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/SumSumHtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nanStraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
: *
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan
»
Etraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ReshapeReshapeAtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/SumCtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
Tshape0*
_output_shapes
: *
T0
·
Atraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/NegNegloss_1/output_1_loss/Sum*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0

Jtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_1DivNoNanAtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Negloss_1/output_1_loss/Sum_1*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: *
T0

Jtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_2DivNoNanJtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_1loss_1/output_1_loss/Sum_1*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
_output_shapes
: 
ª
Atraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/mulMul?training_2/SGD/gradients/loss_1/output_1_loss/Mean_grad/truedivJtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/div_no_nan_2*
_output_shapes
: *
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan
Ö
Ctraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Sum_1SumAtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/mulUtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
	keep_dims( *

Tidx0*
_output_shapes
: 
Á
Gtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Reshape_1ReshapeCtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Sum_1Etraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/Shape_1*2
_class(
&$loc:@loss_1/output_1_loss/div_no_nan*
Tshape0*
_output_shapes
: *
T0
»
Dtraining_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Reshape/shapeConst*+
_class!
loc:@loss_1/output_1_loss/Sum*
dtype0*
_output_shapes
:*
valueB:
¶
>training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/ReshapeReshapeEtraining_2/SGD/gradients/loss_1/output_1_loss/div_no_nan_grad/ReshapeDtraining_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Reshape/shape*+
_class!
loc:@loss_1/output_1_loss/Sum*
Tshape0*
_output_shapes
:*
T0
Á
<training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/ShapeShapeloss_1/output_1_loss/Mul*
T0*
out_type0*+
_class!
loc:@loss_1/output_1_loss/Sum*
_output_shapes
:
®
;training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/TileTile>training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Reshape<training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Shape*
T0*

Tmultiples0*+
_class!
loc:@loss_1/output_1_loss/Sum*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/ShapeShape\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*+
_class!
loc:@loss_1/output_1_loss/Mul*
_output_shapes
:
Ñ
>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape_1Shape&loss_1/output_1_loss/broadcast_weights*
T0*
out_type0*+
_class!
loc:@loss_1/output_1_loss/Mul*
_output_shapes
:
Í
Ltraining_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape_1*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/MulMul;training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Tile&loss_1/output_1_loss/broadcast_weights*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¸
:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/SumSum:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/MulLtraining_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul
¬
>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/ReshapeReshape:training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Sum<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
¹
<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Mul_1Mul\loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits;training_2/SGD/gradients/loss_1/output_1_loss/Sum_grad/Tile*+
_class!
loc:@loss_1/output_1_loss/Mul*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¾
<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Sum_1Sum<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Mul_1Ntraining_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/BroadcastGradientArgs:1*+
_class!
loc:@loss_1/output_1_loss/Mul*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
²
@training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Reshape_1Reshape<training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Sum_1>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Shape_1*
T0*+
_class!
loc:@loss_1/output_1_loss/Mul*
Tshape0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
³
#training_2/SGD/gradients/zeros_like	ZerosLike^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
Ø
training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient^loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0*´
message¨¥Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
Æ
training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ

training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims>training_2/SGD/gradients/loss_1/output_1_loss/Mul_grad/Reshapetraining_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
½
~training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*o
_classe
caloc:@loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0
¾
Btraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/ShapeShape	BiasAdd_3*1
_class'
%#loc:@loss_1/output_1_loss/Reshape_1*
_output_shapes
:*
T0*
out_type0

Dtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/ReshapeReshape~training_2/SGD/gradients/loss_1/output_1_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulBtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/Shape*
T0*1
_class'
%#loc:@loss_1/output_1_loss/Reshape_1*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

â
3training_2/SGD/gradients/BiasAdd_3_grad/BiasAddGradBiasAddGradDtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/Reshape*
data_formatNHWC*
_class
loc:@BiasAdd_3*
_output_shapes
:
*
T0

-training_2/SGD/gradients/MatMul_3_grad/MatMulMatMulDtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/ReshapeMatMul_3/ReadVariableOp*
_class
loc:@MatMul_3*
transpose_b(*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_a( *
T0
ù
/training_2/SGD/gradients/MatMul_3_grad/MatMul_1MatMulcond_1/MergeDtraining_2/SGD/gradients/loss_1/output_1_loss/Reshape_1_grad/Reshape*
transpose_a(*
T0*
_class
loc:@MatMul_3*
transpose_b( *
_output_shapes

:

ß
4training_2/SGD/gradients/cond_1/Merge_grad/cond_gradSwitch-training_2/SGD/gradients/MatMul_3_grad/MatMulcond_1/pred_id*
T0*
_class
loc:@MatMul_3*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
³
6training_2/SGD/gradients/cond_1/dropout/mul_grad/ShapeShapecond_1/dropout/truediv*%
_class
loc:@cond_1/dropout/mul*
_output_shapes
:*
T0*
out_type0
³
8training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape_1Shapecond_1/dropout/Floor*
_output_shapes
:*
T0*
out_type0*%
_class
loc:@cond_1/dropout/mul
µ
Ftraining_2/SGD/gradients/cond_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs6training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape8training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape_1*%
_class
loc:@cond_1/dropout/mul*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0
â
4training_2/SGD/gradients/cond_1/dropout/mul_grad/MulMul6training_2/SGD/gradients/cond_1/Merge_grad/cond_grad:1cond_1/dropout/Floor*
T0*%
_class
loc:@cond_1/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
4training_2/SGD/gradients/cond_1/dropout/mul_grad/SumSum4training_2/SGD/gradients/cond_1/dropout/mul_grad/MulFtraining_2/SGD/gradients/cond_1/dropout/mul_grad/BroadcastGradientArgs*%
_class
loc:@cond_1/dropout/mul*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0

8training_2/SGD/gradients/cond_1/dropout/mul_grad/ReshapeReshape4training_2/SGD/gradients/cond_1/dropout/mul_grad/Sum6training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape*
T0*%
_class
loc:@cond_1/dropout/mul*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
æ
6training_2/SGD/gradients/cond_1/dropout/mul_grad/Mul_1Mulcond_1/dropout/truediv6training_2/SGD/gradients/cond_1/Merge_grad/cond_grad:1*%
_class
loc:@cond_1/dropout/mul*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¦
6training_2/SGD/gradients/cond_1/dropout/mul_grad/Sum_1Sum6training_2/SGD/gradients/cond_1/dropout/mul_grad/Mul_1Htraining_2/SGD/gradients/cond_1/dropout/mul_grad/BroadcastGradientArgs:1*%
_class
loc:@cond_1/dropout/mul*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0

:training_2/SGD/gradients/cond_1/dropout/mul_grad/Reshape_1Reshape6training_2/SGD/gradients/cond_1/dropout/mul_grad/Sum_18training_2/SGD/gradients/cond_1/dropout/mul_grad/Shape_1*%
_class
loc:@cond_1/dropout/mul*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
¡
training_2/SGD/gradients/SwitchSwitchRelu_1cond_1/pred_id*
T0*
_class
loc:@Relu_1*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ

!training_2/SGD/gradients/IdentityIdentity!training_2/SGD/gradients/Switch:1*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

 training_2/SGD/gradients/Shape_1Shape!training_2/SGD/gradients/Switch:1*
_output_shapes
:*
T0*
out_type0*
_class
loc:@Relu_1
¨
$training_2/SGD/gradients/zeros/ConstConst"^training_2/SGD/gradients/Identity*
valueB
 *    *
_class
loc:@Relu_1*
dtype0*
_output_shapes
: 
Í
training_2/SGD/gradients/zerosFill training_2/SGD/gradients/Shape_1$training_2/SGD/gradients/zeros/Const*
T0*

index_type0*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
õ
>training_2/SGD/gradients/cond_1/Identity/Switch_grad/cond_gradMerge4training_2/SGD/gradients/cond_1/Merge_grad/cond_gradtraining_2/SGD/gradients/zeros*
_class
loc:@Relu_1*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: *
T0*
N
Â
:training_2/SGD/gradients/cond_1/dropout/truediv_grad/ShapeShapecond_1/dropout/Shape/Switch:1*
out_type0*)
_class
loc:@cond_1/dropout/truediv*
_output_shapes
:*
T0
ª
<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape_1Const*
valueB *)
_class
loc:@cond_1/dropout/truediv*
dtype0*
_output_shapes
: 
Å
Jtraining_2/SGD/gradients/cond_1/dropout/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape_1*
T0*)
_class
loc:@cond_1/dropout/truediv*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
ò
<training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDivRealDiv8training_2/SGD/gradients/cond_1/dropout/mul_grad/Reshapecond_1/dropout/sub*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
´
8training_2/SGD/gradients/cond_1/dropout/truediv_grad/SumSum<training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDivJtraining_2/SGD/gradients/cond_1/dropout/truediv_grad/BroadcastGradientArgs*)
_class
loc:@cond_1/dropout/truediv*
	keep_dims( *

Tidx0*
_output_shapes
:*
T0
¨
<training_2/SGD/gradients/cond_1/dropout/truediv_grad/ReshapeReshape8training_2/SGD/gradients/cond_1/dropout/truediv_grad/Sum:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape*
T0*)
_class
loc:@cond_1/dropout/truediv*
Tshape0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
»
8training_2/SGD/gradients/cond_1/dropout/truediv_grad/NegNegcond_1/dropout/Shape/Switch:1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*)
_class
loc:@cond_1/dropout/truediv
ô
>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_1RealDiv8training_2/SGD/gradients/cond_1/dropout/truediv_grad/Negcond_1/dropout/sub*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
ú
>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_2RealDiv>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_1cond_1/dropout/sub*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*)
_class
loc:@cond_1/dropout/truediv

8training_2/SGD/gradients/cond_1/dropout/truediv_grad/mulMul8training_2/SGD/gradients/cond_1/dropout/mul_grad/Reshape>training_2/SGD/gradients/cond_1/dropout/truediv_grad/RealDiv_2*
T0*)
_class
loc:@cond_1/dropout/truediv*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
´
:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Sum_1Sum8training_2/SGD/gradients/cond_1/dropout/truediv_grad/mulLtraining_2/SGD/gradients/cond_1/dropout/truediv_grad/BroadcastGradientArgs:1*
T0*)
_class
loc:@cond_1/dropout/truediv*
	keep_dims( *

Tidx0*
_output_shapes
:

>training_2/SGD/gradients/cond_1/dropout/truediv_grad/Reshape_1Reshape:training_2/SGD/gradients/cond_1/dropout/truediv_grad/Sum_1<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Shape_1*
_output_shapes
: *
T0*)
_class
loc:@cond_1/dropout/truediv*
Tshape0
£
!training_2/SGD/gradients/Switch_1SwitchRelu_1cond_1/pred_id*:
_output_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
T0*
_class
loc:@Relu_1

#training_2/SGD/gradients/Identity_1Identity!training_2/SGD/gradients/Switch_1*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0

 training_2/SGD/gradients/Shape_2Shape!training_2/SGD/gradients/Switch_1*
out_type0*
_class
loc:@Relu_1*
_output_shapes
:*
T0
¬
&training_2/SGD/gradients/zeros_1/ConstConst$^training_2/SGD/gradients/Identity_1*
valueB
 *    *
_class
loc:@Relu_1*
dtype0*
_output_shapes
: 
Ñ
 training_2/SGD/gradients/zeros_1Fill training_2/SGD/gradients/Shape_2&training_2/SGD/gradients/zeros_1/Const*
T0*

index_type0*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Ctraining_2/SGD/gradients/cond_1/dropout/Shape/Switch_grad/cond_gradMerge training_2/SGD/gradients/zeros_1<training_2/SGD/gradients/cond_1/dropout/truediv_grad/Reshape*
T0*
N*
_class
loc:@Relu_1*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

training_2/SGD/gradients/AddNAddN>training_2/SGD/gradients/cond_1/Identity/Switch_grad/cond_gradCtraining_2/SGD/gradients/cond_1/dropout/Shape/Switch_grad/cond_grad*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0*
N*
_class
loc:@Relu_1
­
-training_2/SGD/gradients/Relu_1_grad/ReluGradReluGradtraining_2/SGD/gradients/AddNRelu_1*
_class
loc:@Relu_1*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
Ë
3training_2/SGD/gradients/BiasAdd_2_grad/BiasAddGradBiasAddGrad-training_2/SGD/gradients/Relu_1_grad/ReluGrad*
T0*
data_formatNHWC*
_class
loc:@BiasAdd_2*
_output_shapes
:
õ
-training_2/SGD/gradients/MatMul_2_grad/MatMulMatMul-training_2/SGD/gradients/Relu_1_grad/ReluGradMatMul_2/ReadVariableOp*
transpose_a( *
T0*
_class
loc:@MatMul_2*
transpose_b(*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
à
/training_2/SGD/gradients/MatMul_2_grad/MatMul_1MatMul	Reshape_1-training_2/SGD/gradients/Relu_1_grad/ReluGrad*
_class
loc:@MatMul_2*
transpose_b( *
_output_shapes
:	*
transpose_a(*
T0
V
training_2/SGD/ConstConst*
_output_shapes
: *
value	B	 R*
dtype0	
l
"training_2/SGD/AssignAddVariableOpAssignAddVariableOpSGD/iterationstraining_2/SGD/Const*
dtype0	

training_2/SGD/ReadVariableOpReadVariableOpSGD/iterations#^training_2/SGD/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
u
$training_2/SGD/zeros/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
_
training_2/SGD/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training_2/SGD/zerosFill$training_2/SGD/zeros/shape_as_tensortraining_2/SGD/zeros/Const*
T0*

index_type0*
_output_shapes
:	
È
training_2/SGD/VariableVarHandleOp*
dtype0*
shape:	*
	container **
_class 
loc:@training_2/SGD/Variable*
_output_shapes
: *(
shared_nametraining_2/SGD/Variable

8training_2/SGD/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable*
_output_shapes
: 

training_2/SGD/Variable/AssignAssignVariableOptraining_2/SGD/Variabletraining_2/SGD/zeros**
_class 
loc:@training_2/SGD/Variable*
dtype0
°
+training_2/SGD/Variable/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable**
_class 
loc:@training_2/SGD/Variable*
dtype0*
_output_shapes
:	
c
training_2/SGD/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:
É
training_2/SGD/Variable_1VarHandleOp*
dtype0*
shape:*
	container *,
_class"
 loc:@training_2/SGD/Variable_1*
_output_shapes
: **
shared_nametraining_2/SGD/Variable_1

:training_2/SGD/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable_1*
_output_shapes
: 
¢
 training_2/SGD/Variable_1/AssignAssignVariableOptraining_2/SGD/Variable_1training_2/SGD/zeros_1*,
_class"
 loc:@training_2/SGD/Variable_1*
dtype0
±
-training_2/SGD/Variable_1/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable_1*,
_class"
 loc:@training_2/SGD/Variable_1*
dtype0*
_output_shapes
:
k
training_2/SGD/zeros_2Const*
valueB
*    *
dtype0*
_output_shapes

:

Í
training_2/SGD/Variable_2VarHandleOp*
shape
:
*
	container *,
_class"
 loc:@training_2/SGD/Variable_2*
_output_shapes
: **
shared_nametraining_2/SGD/Variable_2*
dtype0

:training_2/SGD/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable_2*
_output_shapes
: 
¢
 training_2/SGD/Variable_2/AssignAssignVariableOptraining_2/SGD/Variable_2training_2/SGD/zeros_2*,
_class"
 loc:@training_2/SGD/Variable_2*
dtype0
µ
-training_2/SGD/Variable_2/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable_2*
_output_shapes

:
*,
_class"
 loc:@training_2/SGD/Variable_2*
dtype0
c
training_2/SGD/zeros_3Const*
dtype0*
_output_shapes
:
*
valueB
*    
É
training_2/SGD/Variable_3VarHandleOp*
shape:
*
	container *,
_class"
 loc:@training_2/SGD/Variable_3*
_output_shapes
: **
shared_nametraining_2/SGD/Variable_3*
dtype0

:training_2/SGD/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining_2/SGD/Variable_3*
_output_shapes
: 
¢
 training_2/SGD/Variable_3/AssignAssignVariableOptraining_2/SGD/Variable_3training_2/SGD/zeros_3*
dtype0*,
_class"
 loc:@training_2/SGD/Variable_3
±
-training_2/SGD/Variable_3/Read/ReadVariableOpReadVariableOptraining_2/SGD/Variable_3*,
_class"
 loc:@training_2/SGD/Variable_3*
dtype0*
_output_shapes
:

d
training_2/SGD/ReadVariableOp_1ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
z
!training_2/SGD/mul/ReadVariableOpReadVariableOptraining_2/SGD/Variable*
dtype0*
_output_shapes
:	

training_2/SGD/mulMultraining_2/SGD/ReadVariableOp_1!training_2/SGD/mul/ReadVariableOp*
_output_shapes
:	*
T0
^
training_2/SGD/ReadVariableOp_2ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_1Multraining_2/SGD/ReadVariableOp_2/training_2/SGD/gradients/MatMul_2_grad/MatMul_1*
T0*
_output_shapes
:	
m
training_2/SGD/subSubtraining_2/SGD/multraining_2/SGD/mul_1*
T0*
_output_shapes
:	
m
training_2/SGD/AssignVariableOpAssignVariableOptraining_2/SGD/Variabletraining_2/SGD/sub*
dtype0

training_2/SGD/ReadVariableOp_3ReadVariableOptraining_2/SGD/Variable ^training_2/SGD/AssignVariableOp*
dtype0*
_output_shapes
:	
o
training_2/SGD/ReadVariableOp_4ReadVariableOpdense_2/kernel*
dtype0*
_output_shapes
:	
x
training_2/SGD/addAddtraining_2/SGD/ReadVariableOp_4training_2/SGD/sub*
_output_shapes
:	*
T0
f
!training_2/SGD/AssignVariableOp_1AssignVariableOpdense_2/kerneltraining_2/SGD/add*
dtype0

training_2/SGD/ReadVariableOp_5ReadVariableOpdense_2/kernel"^training_2/SGD/AssignVariableOp_1*
dtype0*
_output_shapes
:	
d
training_2/SGD/ReadVariableOp_6ReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
y
#training_2/SGD/mul_2/ReadVariableOpReadVariableOptraining_2/SGD/Variable_1*
dtype0*
_output_shapes
:

training_2/SGD/mul_2Multraining_2/SGD/ReadVariableOp_6#training_2/SGD/mul_2/ReadVariableOp*
T0*
_output_shapes
:
^
training_2/SGD/ReadVariableOp_7ReadVariableOpSGD/lr*
_output_shapes
: *
dtype0

training_2/SGD/mul_3Multraining_2/SGD/ReadVariableOp_73training_2/SGD/gradients/BiasAdd_2_grad/BiasAddGrad*
_output_shapes
:*
T0
l
training_2/SGD/sub_1Subtraining_2/SGD/mul_2training_2/SGD/mul_3*
T0*
_output_shapes
:
s
!training_2/SGD/AssignVariableOp_2AssignVariableOptraining_2/SGD/Variable_1training_2/SGD/sub_1*
dtype0

training_2/SGD/ReadVariableOp_8ReadVariableOptraining_2/SGD/Variable_1"^training_2/SGD/AssignVariableOp_2*
dtype0*
_output_shapes
:
h
training_2/SGD/ReadVariableOp_9ReadVariableOpdense_2/bias*
dtype0*
_output_shapes
:
w
training_2/SGD/add_1Addtraining_2/SGD/ReadVariableOp_9training_2/SGD/sub_1*
_output_shapes
:*
T0
f
!training_2/SGD/AssignVariableOp_3AssignVariableOpdense_2/biastraining_2/SGD/add_1*
dtype0

 training_2/SGD/ReadVariableOp_10ReadVariableOpdense_2/bias"^training_2/SGD/AssignVariableOp_3*
dtype0*
_output_shapes
:
e
 training_2/SGD/ReadVariableOp_11ReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
}
#training_2/SGD/mul_4/ReadVariableOpReadVariableOptraining_2/SGD/Variable_2*
dtype0*
_output_shapes

:


training_2/SGD/mul_4Mul training_2/SGD/ReadVariableOp_11#training_2/SGD/mul_4/ReadVariableOp*
T0*
_output_shapes

:

_
 training_2/SGD/ReadVariableOp_12ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_5Mul training_2/SGD/ReadVariableOp_12/training_2/SGD/gradients/MatMul_3_grad/MatMul_1*
_output_shapes

:
*
T0
p
training_2/SGD/sub_2Subtraining_2/SGD/mul_4training_2/SGD/mul_5*
_output_shapes

:
*
T0
s
!training_2/SGD/AssignVariableOp_4AssignVariableOptraining_2/SGD/Variable_2training_2/SGD/sub_2*
dtype0

 training_2/SGD/ReadVariableOp_13ReadVariableOptraining_2/SGD/Variable_2"^training_2/SGD/AssignVariableOp_4*
dtype0*
_output_shapes

:

o
 training_2/SGD/ReadVariableOp_14ReadVariableOpdense_3/kernel*
dtype0*
_output_shapes

:

|
training_2/SGD/add_2Add training_2/SGD/ReadVariableOp_14training_2/SGD/sub_2*
_output_shapes

:
*
T0
h
!training_2/SGD/AssignVariableOp_5AssignVariableOpdense_3/kerneltraining_2/SGD/add_2*
dtype0

 training_2/SGD/ReadVariableOp_15ReadVariableOpdense_3/kernel"^training_2/SGD/AssignVariableOp_5*
dtype0*
_output_shapes

:

e
 training_2/SGD/ReadVariableOp_16ReadVariableOpSGD/momentum*
dtype0*
_output_shapes
: 
y
#training_2/SGD/mul_6/ReadVariableOpReadVariableOptraining_2/SGD/Variable_3*
dtype0*
_output_shapes
:


training_2/SGD/mul_6Mul training_2/SGD/ReadVariableOp_16#training_2/SGD/mul_6/ReadVariableOp*
_output_shapes
:
*
T0
_
 training_2/SGD/ReadVariableOp_17ReadVariableOpSGD/lr*
dtype0*
_output_shapes
: 

training_2/SGD/mul_7Mul training_2/SGD/ReadVariableOp_173training_2/SGD/gradients/BiasAdd_3_grad/BiasAddGrad*
_output_shapes
:
*
T0
l
training_2/SGD/sub_3Subtraining_2/SGD/mul_6training_2/SGD/mul_7*
T0*
_output_shapes
:

s
!training_2/SGD/AssignVariableOp_6AssignVariableOptraining_2/SGD/Variable_3training_2/SGD/sub_3*
dtype0

 training_2/SGD/ReadVariableOp_18ReadVariableOptraining_2/SGD/Variable_3"^training_2/SGD/AssignVariableOp_6*
dtype0*
_output_shapes
:

i
 training_2/SGD/ReadVariableOp_19ReadVariableOpdense_3/bias*
dtype0*
_output_shapes
:

x
training_2/SGD/add_3Add training_2/SGD/ReadVariableOp_19training_2/SGD/sub_3*
_output_shapes
:
*
T0
f
!training_2/SGD/AssignVariableOp_7AssignVariableOpdense_3/biastraining_2/SGD/add_3*
dtype0

 training_2/SGD/ReadVariableOp_20ReadVariableOpdense_3/bias"^training_2/SGD/AssignVariableOp_7*
_output_shapes
:
*
dtype0
ú
training_3/group_depsNoOp^loss_1/mul^metrics_1/acc/div_no_nan^training_2/SGD/ReadVariableOp!^training_2/SGD/ReadVariableOp_10!^training_2/SGD/ReadVariableOp_13!^training_2/SGD/ReadVariableOp_15!^training_2/SGD/ReadVariableOp_18!^training_2/SGD/ReadVariableOp_20 ^training_2/SGD/ReadVariableOp_3 ^training_2/SGD/ReadVariableOp_5 ^training_2/SGD/ReadVariableOp_8
\
VarIsInitializedOp_23VarIsInitializedOptraining_2/SGD/Variable*
_output_shapes
: 
^
VarIsInitializedOp_24VarIsInitializedOptraining_2/SGD/Variable_1*
_output_shapes
: 
^
VarIsInitializedOp_25VarIsInitializedOptraining_2/SGD/Variable_2*
_output_shapes
: 
S
VarIsInitializedOp_26VarIsInitializedOpdense_3/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_27VarIsInitializedOpdense_2/bias*
_output_shapes
: 
Q
VarIsInitializedOp_28VarIsInitializedOpdense_3/bias*
_output_shapes
: 
L
VarIsInitializedOp_29VarIsInitializedOptotal_1*
_output_shapes
: 
S
VarIsInitializedOp_30VarIsInitializedOpdense_2/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_31VarIsInitializedOpSGD/momentum*
_output_shapes
: 
K
VarIsInitializedOp_32VarIsInitializedOpSGD/lr*
_output_shapes
: 
S
VarIsInitializedOp_33VarIsInitializedOpSGD/iterations*
_output_shapes
: 
^
VarIsInitializedOp_34VarIsInitializedOptraining_2/SGD/Variable_3*
_output_shapes
: 
L
VarIsInitializedOp_35VarIsInitializedOpcount_1*
_output_shapes
: 
N
VarIsInitializedOp_36VarIsInitializedOp	SGD/decay*
_output_shapes
: 
ç
init_1NoOp^SGD/decay/Assign^SGD/iterations/Assign^SGD/lr/Assign^SGD/momentum/Assign^count_1/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^dense_3/bias/Assign^dense_3/kernel/Assign^total_1/Assign^training_2/SGD/Variable/Assign!^training_2/SGD/Variable_1/Assign!^training_2/SGD/Variable_2/Assign!^training_2/SGD/Variable_3/Assign""Ô
cond_contextÂ¾
È
cond/cond_textcond/pred_id:0cond/switch_t:0 *
Relu:0
cond/dropout/Floor:0
cond/dropout/Shape/Switch:1
cond/dropout/Shape:0
cond/dropout/add:0
cond/dropout/mul:0
+cond/dropout/random_uniform/RandomUniform:0
!cond/dropout/random_uniform/max:0
!cond/dropout/random_uniform/min:0
!cond/dropout/random_uniform/mul:0
!cond/dropout/random_uniform/sub:0
cond/dropout/random_uniform:0
cond/dropout/rate:0
cond/dropout/sub/x:0
cond/dropout/sub:0
cond/dropout/truediv:0
cond/pred_id:0
cond/switch_t:0%
Relu:0cond/dropout/Shape/Switch:1 
cond/pred_id:0cond/pred_id:0
Ì
cond/cond_text_1cond/pred_id:0cond/switch_f:0*
Relu:0
cond/Identity/Switch:0
cond/Identity:0
cond/pred_id:0
cond/switch_f:0 
Relu:0cond/Identity/Switch:0 
cond/pred_id:0cond/pred_id:0
æ
Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textRloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *ä
Eloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0
Eloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1¨
Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
çY
Tloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0**
jloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
jloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
kloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
zloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Gloss/output_1_loss/broadcast_weights/assert_broadcastable/values/rank:0
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Iloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0×
Iloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ô
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ã
Gloss/output_1_loss/broadcast_weights/assert_broadcastable/values/rank:0xloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0¨
Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Æ
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0zloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02#
#
lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textlloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *¿ 
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ü
lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Ù
Iloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ö
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02Å

Â

nloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*ò
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0â
qloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0mloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0Ü
lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0

Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textOloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *¤
Zloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0¢
Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Õ
Qloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Ü
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Wloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Wloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Wloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
\loss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Eloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Ploss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0¤
Iloss/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Wloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0¢
Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0£
Hloss/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0Wloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0 
Eloss/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Wloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0©
Ploss/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Uloss/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
ú
cond_1/cond_textcond_1/pred_id:0cond_1/switch_t:0 *¾
Relu_1:0
cond_1/dropout/Floor:0
cond_1/dropout/Shape/Switch:1
cond_1/dropout/Shape:0
cond_1/dropout/add:0
cond_1/dropout/mul:0
-cond_1/dropout/random_uniform/RandomUniform:0
#cond_1/dropout/random_uniform/max:0
#cond_1/dropout/random_uniform/min:0
#cond_1/dropout/random_uniform/mul:0
#cond_1/dropout/random_uniform/sub:0
cond_1/dropout/random_uniform:0
cond_1/dropout/rate:0
cond_1/dropout/sub/x:0
cond_1/dropout/sub:0
cond_1/dropout/truediv:0
cond_1/pred_id:0
cond_1/switch_t:0$
cond_1/pred_id:0cond_1/pred_id:0)
Relu_1:0cond_1/dropout/Shape/Switch:1
ä
cond_1/cond_text_1cond_1/pred_id:0cond_1/switch_f:0*¨
Relu_1:0
cond_1/Identity/Switch:0
cond_1/Identity:0
cond_1/pred_id:0
cond_1/switch_f:0$
cond_1/pred_id:0cond_1/pred_id:0$
Relu_1:0cond_1/Identity/Switch:0
ş
Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textTloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *ö
Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 
Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1¬
Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
­[
Vloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*ç*
lloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
lloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
mloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
|loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Uloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Iloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rank:0
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ç
Iloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/rank:0zloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Û
Kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0¬
Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Tloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ê
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/rank:0|loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0Ø
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02Û#
Ø#
nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textnloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *!
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
~loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0à
nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0İ
Kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ú
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:02İ

Ú

ploss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0æ
sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0oloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0à
nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0nloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
­
Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textQloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *®
\loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0¦
Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0

Sloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
^loss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0
Kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0¦
Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Qloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0§
Jloss_1/output_1_loss/broadcast_weights/assert_broadcastable/values/shape:0Yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0¤
Gloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_scalar:0Yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0­
Rloss_1/output_1_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Wloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0¨
Kloss_1/output_1_loss/broadcast_weights/assert_broadcastable/weights/shape:0Yloss_1/output_1_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0"À!
trainable_variables¨!¥!

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

training_2/SGD/Variable:0training_2/SGD/Variable/Assign-training_2/SGD/Variable/Read/ReadVariableOp:0(2training_2/SGD/zeros:08

training_2/SGD/Variable_1:0 training_2/SGD/Variable_1/Assign/training_2/SGD/Variable_1/Read/ReadVariableOp:0(2training_2/SGD/zeros_1:08

training_2/SGD/Variable_2:0 training_2/SGD/Variable_2/Assign/training_2/SGD/Variable_2/Read/ReadVariableOp:0(2training_2/SGD/zeros_2:08

training_2/SGD/Variable_3:0 training_2/SGD/Variable_3/Assign/training_2/SGD/Variable_3/Read/ReadVariableOp:0(2training_2/SGD/zeros_3:08"¶!
	variables¨!¥!

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08

dense_1/kernel:0dense_1/kernel/Assign$dense_1/kernel/Read/ReadVariableOp:0(2+dense_1/kernel/Initializer/random_uniform:08
o
dense_1/bias:0dense_1/bias/Assign"dense_1/bias/Read/ReadVariableOp:0(2 dense_1/bias/Initializer/zeros:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

SGD/iterations:0SGD/iterations/Assign$SGD/iterations/Read/ReadVariableOp:0(2*SGD/iterations/Initializer/initial_value:08
_
SGD/lr:0SGD/lr/AssignSGD/lr/Read/ReadVariableOp:0(2"SGD/lr/Initializer/initial_value:08
w
SGD/momentum:0SGD/momentum/Assign"SGD/momentum/Read/ReadVariableOp:0(2(SGD/momentum/Initializer/initial_value:08
k
SGD/decay:0SGD/decay/AssignSGD/decay/Read/ReadVariableOp:0(2%SGD/decay/Initializer/initial_value:08

dense_2/kernel:0dense_2/kernel/Assign$dense_2/kernel/Read/ReadVariableOp:0(2+dense_2/kernel/Initializer/random_uniform:08
o
dense_2/bias:0dense_2/bias/Assign"dense_2/bias/Read/ReadVariableOp:0(2 dense_2/bias/Initializer/zeros:08

dense_3/kernel:0dense_3/kernel/Assign$dense_3/kernel/Read/ReadVariableOp:0(2+dense_3/kernel/Initializer/random_uniform:08
o
dense_3/bias:0dense_3/bias/Assign"dense_3/bias/Read/ReadVariableOp:0(2 dense_3/bias/Initializer/zeros:08

training_2/SGD/Variable:0training_2/SGD/Variable/Assign-training_2/SGD/Variable/Read/ReadVariableOp:0(2training_2/SGD/zeros:08

training_2/SGD/Variable_1:0 training_2/SGD/Variable_1/Assign/training_2/SGD/Variable_1/Read/ReadVariableOp:0(2training_2/SGD/zeros_1:08

training_2/SGD/Variable_2:0 training_2/SGD/Variable_2/Assign/training_2/SGD/Variable_2/Read/ReadVariableOp:0(2training_2/SGD/zeros_2:08

training_2/SGD/Variable_3:0 training_2/SGD/Variable_3/Assign/training_2/SGD/Variable_3/Read/ReadVariableOp:0(2training_2/SGD/zeros_3:08'Ğs­       ÙÜ2	<]×A*


epoch_lossú|o? }±£       `/ß#	>]×A*

	epoch_acc.8?KnÒŞ        )í©P	
Ü$×A*


epoch_loss"ä?ïH6Å       QKD	¾Ş$×A*

	epoch_accNbX?Iv×        )í©P	éFã×A*


epoch_loss(8å>¬       QKD	(Iã×A*

	epoch_accLË]?O¸!³        )í©P	F¶×A*


epoch_lossÜ>Ô>!ª¾       QKD	,¸×A*

	epoch_acc#%`?7#        )í©P	M2×A*


epoch_lossk§Ë>Ä?Í«       QKD	Î4×A*

	epoch_acc46a?³