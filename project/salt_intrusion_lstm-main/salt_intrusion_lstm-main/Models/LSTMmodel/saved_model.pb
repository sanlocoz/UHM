��#
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��!
|
Connector/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_nameConnector/kernel
u
$Connector/kernel/Read/ReadVariableOpReadVariableOpConnector/kernel*
_output_shapes

:@*
dtype0
t
Connector/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConnector/bias
m
"Connector/bias/Read/ReadVariableOpReadVariableOpConnector/bias*
_output_shapes
:*
dtype0
|
Salt_Pred/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_nameSalt_Pred/kernel
u
$Salt_Pred/kernel/Read/ReadVariableOpReadVariableOpSalt_Pred/kernel*
_output_shapes

:*
dtype0
t
Salt_Pred/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameSalt_Pred/bias
m
"Salt_Pred/bias/Read/ReadVariableOpReadVariableOpSalt_Pred/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
Salt_Seq/lstm_cell_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*-
shared_nameSalt_Seq/lstm_cell_16/kernel
�
0Salt_Seq/lstm_cell_16/kernel/Read/ReadVariableOpReadVariableOpSalt_Seq/lstm_cell_16/kernel*
_output_shapes
:	�*
dtype0
�
&Salt_Seq/lstm_cell_16/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*7
shared_name(&Salt_Seq/lstm_cell_16/recurrent_kernel
�
:Salt_Seq/lstm_cell_16/recurrent_kernel/Read/ReadVariableOpReadVariableOp&Salt_Seq/lstm_cell_16/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
Salt_Seq/lstm_cell_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameSalt_Seq/lstm_cell_16/bias
�
.Salt_Seq/lstm_cell_16/bias/Read/ReadVariableOpReadVariableOpSalt_Seq/lstm_cell_16/bias*
_output_shapes	
:�*
dtype0
�
Qty_Seq/lstm_cell_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_nameQty_Seq/lstm_cell_17/kernel
�
/Qty_Seq/lstm_cell_17/kernel/Read/ReadVariableOpReadVariableOpQty_Seq/lstm_cell_17/kernel*
_output_shapes
:	�*
dtype0
�
%Qty_Seq/lstm_cell_17/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*6
shared_name'%Qty_Seq/lstm_cell_17/recurrent_kernel
�
9Qty_Seq/lstm_cell_17/recurrent_kernel/Read/ReadVariableOpReadVariableOp%Qty_Seq/lstm_cell_17/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
Qty_Seq/lstm_cell_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameQty_Seq/lstm_cell_17/bias
�
-Qty_Seq/lstm_cell_17/bias/Read/ReadVariableOpReadVariableOpQty_Seq/lstm_cell_17/bias*
_output_shapes	
:�*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
�
Adam/Connector/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/Connector/kernel/m
�
+Adam/Connector/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Connector/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/Connector/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Connector/bias/m
{
)Adam/Connector/bias/m/Read/ReadVariableOpReadVariableOpAdam/Connector/bias/m*
_output_shapes
:*
dtype0
�
Adam/Salt_Pred/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/Salt_Pred/kernel/m
�
+Adam/Salt_Pred/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Salt_Pred/kernel/m*
_output_shapes

:*
dtype0
�
Adam/Salt_Pred/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Salt_Pred/bias/m
{
)Adam/Salt_Pred/bias/m/Read/ReadVariableOpReadVariableOpAdam/Salt_Pred/bias/m*
_output_shapes
:*
dtype0
�
#Adam/Salt_Seq/lstm_cell_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*4
shared_name%#Adam/Salt_Seq/lstm_cell_16/kernel/m
�
7Adam/Salt_Seq/lstm_cell_16/kernel/m/Read/ReadVariableOpReadVariableOp#Adam/Salt_Seq/lstm_cell_16/kernel/m*
_output_shapes
:	�*
dtype0
�
-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*>
shared_name/-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/m
�
AAdam/Salt_Seq/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
!Adam/Salt_Seq/lstm_cell_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/Salt_Seq/lstm_cell_16/bias/m
�
5Adam/Salt_Seq/lstm_cell_16/bias/m/Read/ReadVariableOpReadVariableOp!Adam/Salt_Seq/lstm_cell_16/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/Qty_Seq/lstm_cell_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/Qty_Seq/lstm_cell_17/kernel/m
�
6Adam/Qty_Seq/lstm_cell_17/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/Qty_Seq/lstm_cell_17/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/m
�
@Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
 Adam/Qty_Seq/lstm_cell_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/Qty_Seq/lstm_cell_17/bias/m
�
4Adam/Qty_Seq/lstm_cell_17/bias/m/Read/ReadVariableOpReadVariableOp Adam/Qty_Seq/lstm_cell_17/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/Connector/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/Connector/kernel/v
�
+Adam/Connector/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Connector/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/Connector/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Connector/bias/v
{
)Adam/Connector/bias/v/Read/ReadVariableOpReadVariableOpAdam/Connector/bias/v*
_output_shapes
:*
dtype0
�
Adam/Salt_Pred/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/Salt_Pred/kernel/v
�
+Adam/Salt_Pred/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Salt_Pred/kernel/v*
_output_shapes

:*
dtype0
�
Adam/Salt_Pred/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Salt_Pred/bias/v
{
)Adam/Salt_Pred/bias/v/Read/ReadVariableOpReadVariableOpAdam/Salt_Pred/bias/v*
_output_shapes
:*
dtype0
�
#Adam/Salt_Seq/lstm_cell_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*4
shared_name%#Adam/Salt_Seq/lstm_cell_16/kernel/v
�
7Adam/Salt_Seq/lstm_cell_16/kernel/v/Read/ReadVariableOpReadVariableOp#Adam/Salt_Seq/lstm_cell_16/kernel/v*
_output_shapes
:	�*
dtype0
�
-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*>
shared_name/-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/v
�
AAdam/Salt_Seq/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
!Adam/Salt_Seq/lstm_cell_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!Adam/Salt_Seq/lstm_cell_16/bias/v
�
5Adam/Salt_Seq/lstm_cell_16/bias/v/Read/ReadVariableOpReadVariableOp!Adam/Salt_Seq/lstm_cell_16/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/Qty_Seq/lstm_cell_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/Qty_Seq/lstm_cell_17/kernel/v
�
6Adam/Qty_Seq/lstm_cell_17/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/Qty_Seq/lstm_cell_17/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*=
shared_name.,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/v
�
@Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
 Adam/Qty_Seq/lstm_cell_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/Qty_Seq/lstm_cell_17/bias/v
�
4Adam/Qty_Seq/lstm_cell_17/bias/v/Read/ReadVariableOpReadVariableOp Adam/Qty_Seq/lstm_cell_17/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�V
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�V
value�VB�V B�U
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
* 
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
�
cell

state_spec
	variables
 trainable_variables
!regularization_losses
"	keras_api
#_random_generator
$__call__
*%&call_and_return_all_conditional_losses*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*_random_generator
+__call__
*,&call_and_return_all_conditional_losses* 
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1_random_generator
2__call__
*3&call_and_return_all_conditional_losses* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
�

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses* 
�

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
�
Qiter

Rbeta_1

Sbeta_2
	Tdecay
Ulearning_rate:m�;m�Im�Jm�Vm�Wm�Xm�Ym�Zm�[m�:v�;v�Iv�Jv�Vv�Wv�Xv�Yv�Zv�[v�*
J
V0
W1
X2
Y3
Z4
[5
:6
;7
I8
J9*
J
V0
W1
X2
Y3
Z4
[5
:6
;7
I8
J9*
* 
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

aserving_default* 
�
b
state_size

Vkernel
Wrecurrent_kernel
Xbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g_random_generator
h__call__
*i&call_and_return_all_conditional_losses*
* 

V0
W1
X2*

V0
W1
X2*
* 
�

jstates
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
�
p
state_size

Ykernel
Zrecurrent_kernel
[bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u_random_generator
v__call__
*w&call_and_return_all_conditional_losses*
* 

Y0
Z1
[2*

Y0
Z1
[2*
* 
�

xstates
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
 trainable_variables
!regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEConnector/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEConnector/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUESalt_Pred/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUESalt_Pred/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

I0
J1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUESalt_Seq/lstm_cell_16/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&Salt_Seq/lstm_cell_16/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUESalt_Seq/lstm_cell_16/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEQty_Seq/lstm_cell_17/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%Qty_Seq/lstm_cell_17/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEQty_Seq/lstm_cell_17/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
	8

9*

�0*
* 
* 
* 
* 

V0
W1
X2*

V0
W1
X2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 

Y0
Z1
[2*

Y0
Z1
[2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

�total

�count
�	variables
�	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
�}
VARIABLE_VALUEAdam/Connector/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Connector/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/Salt_Pred/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Salt_Pred/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/Salt_Seq/lstm_cell_16/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/Salt_Seq/lstm_cell_16/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/Qty_Seq/lstm_cell_17/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/Qty_Seq/lstm_cell_17/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/Connector/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Connector/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/Salt_Pred/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Salt_Pred/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#Adam/Salt_Seq/lstm_cell_16/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/Salt_Seq/lstm_cell_16/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/Qty_Seq/lstm_cell_17/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/Qty_Seq/lstm_cell_17/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_Quantity_DataPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
serving_default_Salt_DataPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_Quantity_Dataserving_default_Salt_DataQty_Seq/lstm_cell_17/kernel%Qty_Seq/lstm_cell_17/recurrent_kernelQty_Seq/lstm_cell_17/biasSalt_Seq/lstm_cell_16/kernel&Salt_Seq/lstm_cell_16/recurrent_kernelSalt_Seq/lstm_cell_16/biasConnector/kernelConnector/biasSalt_Pred/kernelSalt_Pred/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_558325
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$Connector/kernel/Read/ReadVariableOp"Connector/bias/Read/ReadVariableOp$Salt_Pred/kernel/Read/ReadVariableOp"Salt_Pred/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp0Salt_Seq/lstm_cell_16/kernel/Read/ReadVariableOp:Salt_Seq/lstm_cell_16/recurrent_kernel/Read/ReadVariableOp.Salt_Seq/lstm_cell_16/bias/Read/ReadVariableOp/Qty_Seq/lstm_cell_17/kernel/Read/ReadVariableOp9Qty_Seq/lstm_cell_17/recurrent_kernel/Read/ReadVariableOp-Qty_Seq/lstm_cell_17/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/Connector/kernel/m/Read/ReadVariableOp)Adam/Connector/bias/m/Read/ReadVariableOp+Adam/Salt_Pred/kernel/m/Read/ReadVariableOp)Adam/Salt_Pred/bias/m/Read/ReadVariableOp7Adam/Salt_Seq/lstm_cell_16/kernel/m/Read/ReadVariableOpAAdam/Salt_Seq/lstm_cell_16/recurrent_kernel/m/Read/ReadVariableOp5Adam/Salt_Seq/lstm_cell_16/bias/m/Read/ReadVariableOp6Adam/Qty_Seq/lstm_cell_17/kernel/m/Read/ReadVariableOp@Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/m/Read/ReadVariableOp4Adam/Qty_Seq/lstm_cell_17/bias/m/Read/ReadVariableOp+Adam/Connector/kernel/v/Read/ReadVariableOp)Adam/Connector/bias/v/Read/ReadVariableOp+Adam/Salt_Pred/kernel/v/Read/ReadVariableOp)Adam/Salt_Pred/bias/v/Read/ReadVariableOp7Adam/Salt_Seq/lstm_cell_16/kernel/v/Read/ReadVariableOpAAdam/Salt_Seq/lstm_cell_16/recurrent_kernel/v/Read/ReadVariableOp5Adam/Salt_Seq/lstm_cell_16/bias/v/Read/ReadVariableOp6Adam/Qty_Seq/lstm_cell_17/kernel/v/Read/ReadVariableOp@Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/v/Read/ReadVariableOp4Adam/Qty_Seq/lstm_cell_17/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_560020
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConnector/kernelConnector/biasSalt_Pred/kernelSalt_Pred/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateSalt_Seq/lstm_cell_16/kernel&Salt_Seq/lstm_cell_16/recurrent_kernelSalt_Seq/lstm_cell_16/biasQty_Seq/lstm_cell_17/kernel%Qty_Seq/lstm_cell_17/recurrent_kernelQty_Seq/lstm_cell_17/biastotalcountAdam/Connector/kernel/mAdam/Connector/bias/mAdam/Salt_Pred/kernel/mAdam/Salt_Pred/bias/m#Adam/Salt_Seq/lstm_cell_16/kernel/m-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/m!Adam/Salt_Seq/lstm_cell_16/bias/m"Adam/Qty_Seq/lstm_cell_17/kernel/m,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/m Adam/Qty_Seq/lstm_cell_17/bias/mAdam/Connector/kernel/vAdam/Connector/bias/vAdam/Salt_Pred/kernel/vAdam/Salt_Pred/bias/v#Adam/Salt_Seq/lstm_cell_16/kernel/v-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/v!Adam/Salt_Seq/lstm_cell_16/bias/v"Adam/Qty_Seq/lstm_cell_17/kernel/v,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/v Adam/Qty_Seq/lstm_cell_17/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_560141� 
�J
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_557432

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	�@
-lstm_cell_17_matmul_1_readvariableop_resource:	 �;
,lstm_cell_17_biasadd_readvariableop_resource:	�
identity��#lstm_cell_17/BiasAdd/ReadVariableOp�"lstm_cell_17/MatMul/ReadVariableOp�$lstm_cell_17/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_557348*
condR
while_cond_557347*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
e
F__inference_dropout_18_layer_call_and_return_conditional_losses_557108

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_Salt_Seq_layer_call_fn_558369

inputs
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_557267o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
Qty_Seq_while_cond_558035,
(qty_seq_while_qty_seq_while_loop_counter2
.qty_seq_while_qty_seq_while_maximum_iterations
qty_seq_while_placeholder
qty_seq_while_placeholder_1
qty_seq_while_placeholder_2
qty_seq_while_placeholder_3.
*qty_seq_while_less_qty_seq_strided_slice_1D
@qty_seq_while_qty_seq_while_cond_558035___redundant_placeholder0D
@qty_seq_while_qty_seq_while_cond_558035___redundant_placeholder1D
@qty_seq_while_qty_seq_while_cond_558035___redundant_placeholder2D
@qty_seq_while_qty_seq_while_cond_558035___redundant_placeholder3
qty_seq_while_identity
�
Qty_Seq/while/LessLessqty_seq_while_placeholder*qty_seq_while_less_qty_seq_strided_slice_1*
T0*
_output_shapes
: [
Qty_Seq/while/IdentityIdentityQty_Seq/while/Less:z:0*
T0
*
_output_shapes
: "9
qty_seq_while_identityQty_Seq/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
Z
.__inference_concatenate_8_layer_call_fn_559617
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_556950`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:��������� :��������� :Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
inputs/1
�
�
$__inference_signature_wrapper_558325
quantity_data
	salt_data
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	�
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	salt_dataquantity_dataunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_555920o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_nameQuantity_Data:VR
+
_output_shapes
:���������
#
_user_specified_name	Salt_Data
�J
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558941

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	�@
-lstm_cell_16_matmul_1_readvariableop_resource:	 �;
,lstm_cell_16_biasadd_readvariableop_resource:	�
identity��#lstm_cell_16/BiasAdd/ReadVariableOp�"lstm_cell_16/MatMul/ReadVariableOp�$lstm_cell_16/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_558857*
condR
while_cond_558856*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_556350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_556350___redundant_placeholder04
0while_while_cond_556350___redundant_placeholder14
0while_while_cond_556350___redundant_placeholder24
0while_while_cond_556350___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�8
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556261

inputs&
lstm_cell_16_556179:	�&
lstm_cell_16_556181:	 �"
lstm_cell_16_556183:	�
identity��$lstm_cell_16/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_556179lstm_cell_16_556181lstm_cell_16_556183*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_556133n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_556179lstm_cell_16_556181lstm_cell_16_556183*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_556192*
condR
while_cond_556191*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� u
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�J
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558798

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	�@
-lstm_cell_16_matmul_1_readvariableop_resource:	 �;
,lstm_cell_16_biasadd_readvariableop_resource:	�
identity��#lstm_cell_16/BiasAdd/ReadVariableOp�"lstm_cell_16/MatMul/ReadVariableOp�$lstm_cell_16/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_558714*
condR
while_cond_558713*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�"
�
while_body_556001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_16_556025_0:	�.
while_lstm_cell_16_556027_0:	 �*
while_lstm_cell_16_556029_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_16_556025:	�,
while_lstm_cell_16_556027:	 �(
while_lstm_cell_16_556029:	���*while/lstm_cell_16/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_556025_0while_lstm_cell_16_556027_0while_lstm_cell_16_556029_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_555987�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� y

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_16_556025while_lstm_cell_16_556025_0"8
while_lstm_cell_16_556027while_lstm_cell_16_556027_0"8
while_lstm_cell_16_556029while_lstm_cell_16_556029_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�8
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556070

inputs&
lstm_cell_16_555988:	�&
lstm_cell_16_555990:	 �"
lstm_cell_16_555992:	�
identity��$lstm_cell_16/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_16_555988lstm_cell_16_555990lstm_cell_16_555992*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_555987n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_16_555988lstm_cell_16_555990lstm_cell_16_555992*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_556001*
condR
while_cond_556000*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� u
NoOpNoOp%^lstm_cell_16/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_16/StatefulPartitionedCall$lstm_cell_16/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�J
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559557

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	�@
-lstm_cell_17_matmul_1_readvariableop_resource:	 �;
,lstm_cell_17_biasadd_readvariableop_resource:	�
identity��#lstm_cell_17/BiasAdd/ReadVariableOp�"lstm_cell_17/MatMul/ReadVariableOp�$lstm_cell_17/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_559473*
condR
while_cond_559472*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_559658

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_559330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	�F
3while_lstm_cell_17_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_17_biasadd_readvariableop_resource:	���)while/lstm_cell_17/BiasAdd/ReadVariableOp�(while/lstm_cell_17/MatMul/ReadVariableOp�*while/lstm_cell_17/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
�
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_556985

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_Qty_Seq_layer_call_fn_558985

inputs
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_557432o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
E__inference_Connector_layer_call_and_return_conditional_losses_556962

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
(__inference_Qty_Seq_layer_call_fn_558952
inputs_0
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556420o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558512
inputs_0>
+lstm_cell_16_matmul_readvariableop_resource:	�@
-lstm_cell_16_matmul_1_readvariableop_resource:	 �;
,lstm_cell_16_biasadd_readvariableop_resource:	�
identity��#lstm_cell_16/BiasAdd/ReadVariableOp�"lstm_cell_16/MatMul/ReadVariableOp�$lstm_cell_16/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_558428*
condR
while_cond_558427*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�J
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559414

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	�@
-lstm_cell_17_matmul_1_readvariableop_resource:	 �;
,lstm_cell_17_biasadd_readvariableop_resource:	�
identity��#lstm_cell_17/BiasAdd/ReadVariableOp�"lstm_cell_17/MatMul/ReadVariableOp�$lstm_cell_17/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_559330*
condR
while_cond_559329*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_559187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	�F
3while_lstm_cell_17_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_17_biasadd_readvariableop_resource:	���)while/lstm_cell_17/BiasAdd/ReadVariableOp�(while/lstm_cell_17/MatMul/ReadVariableOp�*while/lstm_cell_17/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�

�
Qty_Seq_while_cond_557735,
(qty_seq_while_qty_seq_while_loop_counter2
.qty_seq_while_qty_seq_while_maximum_iterations
qty_seq_while_placeholder
qty_seq_while_placeholder_1
qty_seq_while_placeholder_2
qty_seq_while_placeholder_3.
*qty_seq_while_less_qty_seq_strided_slice_1D
@qty_seq_while_qty_seq_while_cond_557735___redundant_placeholder0D
@qty_seq_while_qty_seq_while_cond_557735___redundant_placeholder1D
@qty_seq_while_qty_seq_while_cond_557735___redundant_placeholder2D
@qty_seq_while_qty_seq_while_cond_557735___redundant_placeholder3
qty_seq_while_identity
�
Qty_Seq/while/LessLessqty_seq_while_placeholder*qty_seq_while_less_qty_seq_strided_slice_1*
T0*
_output_shapes
: [
Qty_Seq/while/IdentityIdentityQty_Seq/while/Less:z:0*
T0
*
_output_shapes
: "9
qty_seq_while_identityQty_Seq/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
-__inference_lstm_cell_16_layer_call_fn_559706

inputs
states_0
states_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_555987o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
(__inference_model_8_layer_call_fn_557015
	salt_data
quantity_data
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	�
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	salt_dataquantity_dataunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_556992o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:���������
#
_user_specified_name	Salt_Data:ZV
+
_output_shapes
:���������
'
_user_specified_nameQuantity_Data
�8
�
while_body_558714
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	�F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_16_biasadd_readvariableop_resource:	���)while/lstm_cell_16/BiasAdd/ReadVariableOp�(while/lstm_cell_16/MatMul/ReadVariableOp�*while/lstm_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�B
�

Salt_Seq_while_body_558175.
*salt_seq_while_salt_seq_while_loop_counter4
0salt_seq_while_salt_seq_while_maximum_iterations
salt_seq_while_placeholder 
salt_seq_while_placeholder_1 
salt_seq_while_placeholder_2 
salt_seq_while_placeholder_3-
)salt_seq_while_salt_seq_strided_slice_1_0i
esalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensor_0O
<salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0:	�Q
>salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �L
=salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
salt_seq_while_identity
salt_seq_while_identity_1
salt_seq_while_identity_2
salt_seq_while_identity_3
salt_seq_while_identity_4
salt_seq_while_identity_5+
'salt_seq_while_salt_seq_strided_slice_1g
csalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensorM
:salt_seq_while_lstm_cell_16_matmul_readvariableop_resource:	�O
<salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource:	 �J
;salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource:	���2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp�1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp�3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp�
@Salt_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2Salt_Seq/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemesalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensor_0salt_seq_while_placeholderISalt_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp<salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"Salt_Seq/while/lstm_cell_16/MatMulMatMul9Salt_Seq/while/TensorArrayV2Read/TensorListGetItem:item:09Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp>salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
$Salt_Seq/while/lstm_cell_16/MatMul_1MatMulsalt_seq_while_placeholder_2;Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Salt_Seq/while/lstm_cell_16/addAddV2,Salt_Seq/while/lstm_cell_16/MatMul:product:0.Salt_Seq/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp=salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#Salt_Seq/while/lstm_cell_16/BiasAddBiasAdd#Salt_Seq/while/lstm_cell_16/add:z:0:Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+Salt_Seq/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!Salt_Seq/while/lstm_cell_16/splitSplit4Salt_Seq/while/lstm_cell_16/split/split_dim:output:0,Salt_Seq/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
#Salt_Seq/while/lstm_cell_16/SigmoidSigmoid*Salt_Seq/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� �
%Salt_Seq/while/lstm_cell_16/Sigmoid_1Sigmoid*Salt_Seq/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
Salt_Seq/while/lstm_cell_16/mulMul)Salt_Seq/while/lstm_cell_16/Sigmoid_1:y:0salt_seq_while_placeholder_3*
T0*'
_output_shapes
:��������� �
 Salt_Seq/while/lstm_cell_16/ReluRelu*Salt_Seq/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
!Salt_Seq/while/lstm_cell_16/mul_1Mul'Salt_Seq/while/lstm_cell_16/Sigmoid:y:0.Salt_Seq/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
!Salt_Seq/while/lstm_cell_16/add_1AddV2#Salt_Seq/while/lstm_cell_16/mul:z:0%Salt_Seq/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� �
%Salt_Seq/while/lstm_cell_16/Sigmoid_2Sigmoid*Salt_Seq/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� �
"Salt_Seq/while/lstm_cell_16/Relu_1Relu%Salt_Seq/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
!Salt_Seq/while/lstm_cell_16/mul_2Mul)Salt_Seq/while/lstm_cell_16/Sigmoid_2:y:00Salt_Seq/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
3Salt_Seq/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsalt_seq_while_placeholder_1salt_seq_while_placeholder%Salt_Seq/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
Salt_Seq/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
Salt_Seq/while/addAddV2salt_seq_while_placeholderSalt_Seq/while/add/y:output:0*
T0*
_output_shapes
: X
Salt_Seq/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
Salt_Seq/while/add_1AddV2*salt_seq_while_salt_seq_while_loop_counterSalt_Seq/while/add_1/y:output:0*
T0*
_output_shapes
: t
Salt_Seq/while/IdentityIdentitySalt_Seq/while/add_1:z:0^Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
Salt_Seq/while/Identity_1Identity0salt_seq_while_salt_seq_while_maximum_iterations^Salt_Seq/while/NoOp*
T0*
_output_shapes
: t
Salt_Seq/while/Identity_2IdentitySalt_Seq/while/add:z:0^Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
Salt_Seq/while/Identity_3IdentityCSalt_Seq/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^Salt_Seq/while/NoOp*
T0*
_output_shapes
: :����
Salt_Seq/while/Identity_4Identity%Salt_Seq/while/lstm_cell_16/mul_2:z:0^Salt_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Salt_Seq/while/Identity_5Identity%Salt_Seq/while/lstm_cell_16/add_1:z:0^Salt_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Salt_Seq/while/NoOpNoOp3^Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2^Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp4^Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
salt_seq_while_identity Salt_Seq/while/Identity:output:0"?
salt_seq_while_identity_1"Salt_Seq/while/Identity_1:output:0"?
salt_seq_while_identity_2"Salt_Seq/while/Identity_2:output:0"?
salt_seq_while_identity_3"Salt_Seq/while/Identity_3:output:0"?
salt_seq_while_identity_4"Salt_Seq/while/Identity_4:output:0"?
salt_seq_while_identity_5"Salt_Seq/while/Identity_5:output:0"|
;salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource=salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0"~
<salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource>salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0"z
:salt_seq_while_lstm_cell_16_matmul_readvariableop_resource<salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0"T
'salt_seq_while_salt_seq_strided_slice_1)salt_seq_while_salt_seq_strided_slice_1_0"�
csalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensoresalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2h
2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2f
1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp2j
3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_556541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_556541___redundant_placeholder04
0while_while_cond_556541___redundant_placeholder14
0while_while_cond_556541___redundant_placeholder24
0while_while_cond_556541___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
*__inference_Connector_layer_call_fn_559633

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Connector_layer_call_and_return_conditional_losses_556962o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�A
�

Qty_Seq_while_body_558036,
(qty_seq_while_qty_seq_while_loop_counter2
.qty_seq_while_qty_seq_while_maximum_iterations
qty_seq_while_placeholder
qty_seq_while_placeholder_1
qty_seq_while_placeholder_2
qty_seq_while_placeholder_3+
'qty_seq_while_qty_seq_strided_slice_1_0g
cqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensor_0N
;qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0:	�P
=qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �K
<qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
qty_seq_while_identity
qty_seq_while_identity_1
qty_seq_while_identity_2
qty_seq_while_identity_3
qty_seq_while_identity_4
qty_seq_while_identity_5)
%qty_seq_while_qty_seq_strided_slice_1e
aqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensorL
9qty_seq_while_lstm_cell_17_matmul_readvariableop_resource:	�N
;qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource:	 �I
:qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource:	���1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp�0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp�2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp�
?Qty_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1Qty_Seq/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensor_0qty_seq_while_placeholderHQty_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
!Qty_Seq/while/lstm_cell_17/MatMulMatMul8Qty_Seq/while/TensorArrayV2Read/TensorListGetItem:item:08Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
#Qty_Seq/while/lstm_cell_17/MatMul_1MatMulqty_seq_while_placeholder_2:Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Qty_Seq/while/lstm_cell_17/addAddV2+Qty_Seq/while/lstm_cell_17/MatMul:product:0-Qty_Seq/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"Qty_Seq/while/lstm_cell_17/BiasAddBiasAdd"Qty_Seq/while/lstm_cell_17/add:z:09Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*Qty_Seq/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 Qty_Seq/while/lstm_cell_17/splitSplit3Qty_Seq/while/lstm_cell_17/split/split_dim:output:0+Qty_Seq/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
"Qty_Seq/while/lstm_cell_17/SigmoidSigmoid)Qty_Seq/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� �
$Qty_Seq/while/lstm_cell_17/Sigmoid_1Sigmoid)Qty_Seq/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/lstm_cell_17/mulMul(Qty_Seq/while/lstm_cell_17/Sigmoid_1:y:0qty_seq_while_placeholder_3*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/lstm_cell_17/ReluRelu)Qty_Seq/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
 Qty_Seq/while/lstm_cell_17/mul_1Mul&Qty_Seq/while/lstm_cell_17/Sigmoid:y:0-Qty_Seq/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
 Qty_Seq/while/lstm_cell_17/add_1AddV2"Qty_Seq/while/lstm_cell_17/mul:z:0$Qty_Seq/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� �
$Qty_Seq/while/lstm_cell_17/Sigmoid_2Sigmoid)Qty_Seq/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� �
!Qty_Seq/while/lstm_cell_17/Relu_1Relu$Qty_Seq/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
 Qty_Seq/while/lstm_cell_17/mul_2Mul(Qty_Seq/while/lstm_cell_17/Sigmoid_2:y:0/Qty_Seq/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
2Qty_Seq/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemqty_seq_while_placeholder_1qty_seq_while_placeholder$Qty_Seq/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
Qty_Seq/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
Qty_Seq/while/addAddV2qty_seq_while_placeholderQty_Seq/while/add/y:output:0*
T0*
_output_shapes
: W
Qty_Seq/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
Qty_Seq/while/add_1AddV2(qty_seq_while_qty_seq_while_loop_counterQty_Seq/while/add_1/y:output:0*
T0*
_output_shapes
: q
Qty_Seq/while/IdentityIdentityQty_Seq/while/add_1:z:0^Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
Qty_Seq/while/Identity_1Identity.qty_seq_while_qty_seq_while_maximum_iterations^Qty_Seq/while/NoOp*
T0*
_output_shapes
: q
Qty_Seq/while/Identity_2IdentityQty_Seq/while/add:z:0^Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
Qty_Seq/while/Identity_3IdentityBQty_Seq/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^Qty_Seq/while/NoOp*
T0*
_output_shapes
: :����
Qty_Seq/while/Identity_4Identity$Qty_Seq/while/lstm_cell_17/mul_2:z:0^Qty_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/Identity_5Identity$Qty_Seq/while/lstm_cell_17/add_1:z:0^Qty_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/NoOpNoOp2^Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp1^Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp3^Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
qty_seq_while_identityQty_Seq/while/Identity:output:0"=
qty_seq_while_identity_1!Qty_Seq/while/Identity_1:output:0"=
qty_seq_while_identity_2!Qty_Seq/while/Identity_2:output:0"=
qty_seq_while_identity_3!Qty_Seq/while/Identity_3:output:0"=
qty_seq_while_identity_4!Qty_Seq/while/Identity_4:output:0"=
qty_seq_while_identity_5!Qty_Seq/while/Identity_5:output:0"z
:qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource<qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource=qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9qty_seq_while_lstm_cell_17_matmul_readvariableop_resource;qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0"P
%qty_seq_while_qty_seq_strided_slice_1'qty_seq_while_qty_seq_strided_slice_1_0"�
aqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensorcqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2f
1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp2h
2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�K
�
!model_8_Qty_Seq_while_body_555680<
8model_8_qty_seq_while_model_8_qty_seq_while_loop_counterB
>model_8_qty_seq_while_model_8_qty_seq_while_maximum_iterations%
!model_8_qty_seq_while_placeholder'
#model_8_qty_seq_while_placeholder_1'
#model_8_qty_seq_while_placeholder_2'
#model_8_qty_seq_while_placeholder_3;
7model_8_qty_seq_while_model_8_qty_seq_strided_slice_1_0w
smodel_8_qty_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_qty_seq_tensorarrayunstack_tensorlistfromtensor_0V
Cmodel_8_qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0:	�X
Emodel_8_qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �S
Dmodel_8_qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0:	�"
model_8_qty_seq_while_identity$
 model_8_qty_seq_while_identity_1$
 model_8_qty_seq_while_identity_2$
 model_8_qty_seq_while_identity_3$
 model_8_qty_seq_while_identity_4$
 model_8_qty_seq_while_identity_59
5model_8_qty_seq_while_model_8_qty_seq_strided_slice_1u
qmodel_8_qty_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_qty_seq_tensorarrayunstack_tensorlistfromtensorT
Amodel_8_qty_seq_while_lstm_cell_17_matmul_readvariableop_resource:	�V
Cmodel_8_qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource:	 �Q
Bmodel_8_qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource:	���9model_8/Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp�8model_8/Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp�:model_8/Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp�
Gmodel_8/Qty_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
9model_8/Qty_Seq/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsmodel_8_qty_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_qty_seq_tensorarrayunstack_tensorlistfromtensor_0!model_8_qty_seq_while_placeholderPmodel_8/Qty_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
8model_8/Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOpCmodel_8_qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
)model_8/Qty_Seq/while/lstm_cell_17/MatMulMatMul@model_8/Qty_Seq/while/TensorArrayV2Read/TensorListGetItem:item:0@model_8/Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
:model_8/Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOpEmodel_8_qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
+model_8/Qty_Seq/while/lstm_cell_17/MatMul_1MatMul#model_8_qty_seq_while_placeholder_2Bmodel_8/Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
&model_8/Qty_Seq/while/lstm_cell_17/addAddV23model_8/Qty_Seq/while/lstm_cell_17/MatMul:product:05model_8/Qty_Seq/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
9model_8/Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOpDmodel_8_qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
*model_8/Qty_Seq/while/lstm_cell_17/BiasAddBiasAdd*model_8/Qty_Seq/while/lstm_cell_17/add:z:0Amodel_8/Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������t
2model_8/Qty_Seq/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
(model_8/Qty_Seq/while/lstm_cell_17/splitSplit;model_8/Qty_Seq/while/lstm_cell_17/split/split_dim:output:03model_8/Qty_Seq/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
*model_8/Qty_Seq/while/lstm_cell_17/SigmoidSigmoid1model_8/Qty_Seq/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� �
,model_8/Qty_Seq/while/lstm_cell_17/Sigmoid_1Sigmoid1model_8/Qty_Seq/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
&model_8/Qty_Seq/while/lstm_cell_17/mulMul0model_8/Qty_Seq/while/lstm_cell_17/Sigmoid_1:y:0#model_8_qty_seq_while_placeholder_3*
T0*'
_output_shapes
:��������� �
'model_8/Qty_Seq/while/lstm_cell_17/ReluRelu1model_8/Qty_Seq/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
(model_8/Qty_Seq/while/lstm_cell_17/mul_1Mul.model_8/Qty_Seq/while/lstm_cell_17/Sigmoid:y:05model_8/Qty_Seq/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
(model_8/Qty_Seq/while/lstm_cell_17/add_1AddV2*model_8/Qty_Seq/while/lstm_cell_17/mul:z:0,model_8/Qty_Seq/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� �
,model_8/Qty_Seq/while/lstm_cell_17/Sigmoid_2Sigmoid1model_8/Qty_Seq/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� �
)model_8/Qty_Seq/while/lstm_cell_17/Relu_1Relu,model_8/Qty_Seq/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
(model_8/Qty_Seq/while/lstm_cell_17/mul_2Mul0model_8/Qty_Seq/while/lstm_cell_17/Sigmoid_2:y:07model_8/Qty_Seq/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
:model_8/Qty_Seq/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#model_8_qty_seq_while_placeholder_1!model_8_qty_seq_while_placeholder,model_8/Qty_Seq/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
model_8/Qty_Seq/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/Qty_Seq/while/addAddV2!model_8_qty_seq_while_placeholder$model_8/Qty_Seq/while/add/y:output:0*
T0*
_output_shapes
: _
model_8/Qty_Seq/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/Qty_Seq/while/add_1AddV28model_8_qty_seq_while_model_8_qty_seq_while_loop_counter&model_8/Qty_Seq/while/add_1/y:output:0*
T0*
_output_shapes
: �
model_8/Qty_Seq/while/IdentityIdentitymodel_8/Qty_Seq/while/add_1:z:0^model_8/Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
 model_8/Qty_Seq/while/Identity_1Identity>model_8_qty_seq_while_model_8_qty_seq_while_maximum_iterations^model_8/Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
 model_8/Qty_Seq/while/Identity_2Identitymodel_8/Qty_Seq/while/add:z:0^model_8/Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
 model_8/Qty_Seq/while/Identity_3IdentityJmodel_8/Qty_Seq/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_8/Qty_Seq/while/NoOp*
T0*
_output_shapes
: :����
 model_8/Qty_Seq/while/Identity_4Identity,model_8/Qty_Seq/while/lstm_cell_17/mul_2:z:0^model_8/Qty_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
 model_8/Qty_Seq/while/Identity_5Identity,model_8/Qty_Seq/while/lstm_cell_17/add_1:z:0^model_8/Qty_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
model_8/Qty_Seq/while/NoOpNoOp:^model_8/Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp9^model_8/Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp;^model_8/Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
model_8_qty_seq_while_identity'model_8/Qty_Seq/while/Identity:output:0"M
 model_8_qty_seq_while_identity_1)model_8/Qty_Seq/while/Identity_1:output:0"M
 model_8_qty_seq_while_identity_2)model_8/Qty_Seq/while/Identity_2:output:0"M
 model_8_qty_seq_while_identity_3)model_8/Qty_Seq/while/Identity_3:output:0"M
 model_8_qty_seq_while_identity_4)model_8/Qty_Seq/while/Identity_4:output:0"M
 model_8_qty_seq_while_identity_5)model_8/Qty_Seq/while/Identity_5:output:0"�
Bmodel_8_qty_seq_while_lstm_cell_17_biasadd_readvariableop_resourceDmodel_8_qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0"�
Cmodel_8_qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resourceEmodel_8_qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0"�
Amodel_8_qty_seq_while_lstm_cell_17_matmul_readvariableop_resourceCmodel_8_qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0"p
5model_8_qty_seq_while_model_8_qty_seq_strided_slice_17model_8_qty_seq_while_model_8_qty_seq_strided_slice_1_0"�
qmodel_8_qty_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_qty_seq_tensorarrayunstack_tensorlistfromtensorsmodel_8_qty_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_qty_seq_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2v
9model_8/Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp9model_8/Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp2t
8model_8/Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp8model_8/Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp2x
:model_8/Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp:model_8/Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
e
F__inference_dropout_18_layer_call_and_return_conditional_losses_559584

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_556000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_556000___redundant_placeholder04
0while_while_cond_556000___redundant_placeholder14
0while_while_cond_556000___redundant_placeholder24
0while_while_cond_556000___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�#
�
C__inference_model_8_layer_call_and_return_conditional_losses_556992

inputs
inputs_1!
qty_seq_556772:	�!
qty_seq_556774:	 �
qty_seq_556776:	�"
salt_seq_556922:	�"
salt_seq_556924:	 �
salt_seq_556926:	�"
connector_556963:@
connector_556965:"
salt_pred_556986:
salt_pred_556988:
identity��!Connector/StatefulPartitionedCall�Qty_Seq/StatefulPartitionedCall�!Salt_Pred/StatefulPartitionedCall� Salt_Seq/StatefulPartitionedCall�
Qty_Seq/StatefulPartitionedCallStatefulPartitionedCallinputs_1qty_seq_556772qty_seq_556774qty_seq_556776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556771�
 Salt_Seq/StatefulPartitionedCallStatefulPartitionedCallinputssalt_seq_556922salt_seq_556924salt_seq_556926*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556921�
dropout_18/PartitionedCallPartitionedCall)Salt_Seq/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_556934�
dropout_19/PartitionedCallPartitionedCall(Qty_Seq/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_556941�
concatenate_8/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0#dropout_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_556950�
!Connector/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0connector_556963connector_556965*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Connector_layer_call_and_return_conditional_losses_556962�
dropout_20/PartitionedCallPartitionedCall*Connector/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_556973�
!Salt_Pred/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0salt_pred_556986salt_pred_556988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_556985y
IdentityIdentity*Salt_Pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Connector/StatefulPartitionedCall ^Qty_Seq/StatefulPartitionedCall"^Salt_Pred/StatefulPartitionedCall!^Salt_Seq/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2F
!Connector/StatefulPartitionedCall!Connector/StatefulPartitionedCall2B
Qty_Seq/StatefulPartitionedCallQty_Seq/StatefulPartitionedCall2F
!Salt_Pred/StatefulPartitionedCall!Salt_Pred/StatefulPartitionedCall2D
 Salt_Seq/StatefulPartitionedCall Salt_Seq/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_17_layer_call_fn_559821

inputs
states_0
states_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556483o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�	
e
F__inference_dropout_19_layer_call_and_return_conditional_losses_557085

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
G
+__inference_dropout_20_layer_call_fn_559648

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_556973`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_559787

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
)__inference_Salt_Seq_layer_call_fn_558358

inputs
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556921o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_558856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558856___redundant_placeholder04
0while_while_cond_558856___redundant_placeholder14
0while_while_cond_558856___redundant_placeholder24
0while_while_cond_558856___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�A
�

Qty_Seq_while_body_557736,
(qty_seq_while_qty_seq_while_loop_counter2
.qty_seq_while_qty_seq_while_maximum_iterations
qty_seq_while_placeholder
qty_seq_while_placeholder_1
qty_seq_while_placeholder_2
qty_seq_while_placeholder_3+
'qty_seq_while_qty_seq_strided_slice_1_0g
cqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensor_0N
;qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0:	�P
=qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �K
<qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
qty_seq_while_identity
qty_seq_while_identity_1
qty_seq_while_identity_2
qty_seq_while_identity_3
qty_seq_while_identity_4
qty_seq_while_identity_5)
%qty_seq_while_qty_seq_strided_slice_1e
aqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensorL
9qty_seq_while_lstm_cell_17_matmul_readvariableop_resource:	�N
;qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource:	 �I
:qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource:	���1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp�0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp�2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp�
?Qty_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1Qty_Seq/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensor_0qty_seq_while_placeholderHQty_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
!Qty_Seq/while/lstm_cell_17/MatMulMatMul8Qty_Seq/while/TensorArrayV2Read/TensorListGetItem:item:08Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
#Qty_Seq/while/lstm_cell_17/MatMul_1MatMulqty_seq_while_placeholder_2:Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Qty_Seq/while/lstm_cell_17/addAddV2+Qty_Seq/while/lstm_cell_17/MatMul:product:0-Qty_Seq/while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"Qty_Seq/while/lstm_cell_17/BiasAddBiasAdd"Qty_Seq/while/lstm_cell_17/add:z:09Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*Qty_Seq/while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 Qty_Seq/while/lstm_cell_17/splitSplit3Qty_Seq/while/lstm_cell_17/split/split_dim:output:0+Qty_Seq/while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
"Qty_Seq/while/lstm_cell_17/SigmoidSigmoid)Qty_Seq/while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� �
$Qty_Seq/while/lstm_cell_17/Sigmoid_1Sigmoid)Qty_Seq/while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/lstm_cell_17/mulMul(Qty_Seq/while/lstm_cell_17/Sigmoid_1:y:0qty_seq_while_placeholder_3*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/lstm_cell_17/ReluRelu)Qty_Seq/while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
 Qty_Seq/while/lstm_cell_17/mul_1Mul&Qty_Seq/while/lstm_cell_17/Sigmoid:y:0-Qty_Seq/while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
 Qty_Seq/while/lstm_cell_17/add_1AddV2"Qty_Seq/while/lstm_cell_17/mul:z:0$Qty_Seq/while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� �
$Qty_Seq/while/lstm_cell_17/Sigmoid_2Sigmoid)Qty_Seq/while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� �
!Qty_Seq/while/lstm_cell_17/Relu_1Relu$Qty_Seq/while/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
 Qty_Seq/while/lstm_cell_17/mul_2Mul(Qty_Seq/while/lstm_cell_17/Sigmoid_2:y:0/Qty_Seq/while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
2Qty_Seq/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemqty_seq_while_placeholder_1qty_seq_while_placeholder$Qty_Seq/while/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
Qty_Seq/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
Qty_Seq/while/addAddV2qty_seq_while_placeholderQty_Seq/while/add/y:output:0*
T0*
_output_shapes
: W
Qty_Seq/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
Qty_Seq/while/add_1AddV2(qty_seq_while_qty_seq_while_loop_counterQty_Seq/while/add_1/y:output:0*
T0*
_output_shapes
: q
Qty_Seq/while/IdentityIdentityQty_Seq/while/add_1:z:0^Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
Qty_Seq/while/Identity_1Identity.qty_seq_while_qty_seq_while_maximum_iterations^Qty_Seq/while/NoOp*
T0*
_output_shapes
: q
Qty_Seq/while/Identity_2IdentityQty_Seq/while/add:z:0^Qty_Seq/while/NoOp*
T0*
_output_shapes
: �
Qty_Seq/while/Identity_3IdentityBQty_Seq/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^Qty_Seq/while/NoOp*
T0*
_output_shapes
: :����
Qty_Seq/while/Identity_4Identity$Qty_Seq/while/lstm_cell_17/mul_2:z:0^Qty_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/Identity_5Identity$Qty_Seq/while/lstm_cell_17/add_1:z:0^Qty_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Qty_Seq/while/NoOpNoOp2^Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp1^Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp3^Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
qty_seq_while_identityQty_Seq/while/Identity:output:0"=
qty_seq_while_identity_1!Qty_Seq/while/Identity_1:output:0"=
qty_seq_while_identity_2!Qty_Seq/while/Identity_2:output:0"=
qty_seq_while_identity_3!Qty_Seq/while/Identity_3:output:0"=
qty_seq_while_identity_4!Qty_Seq/while/Identity_4:output:0"=
qty_seq_while_identity_5!Qty_Seq/while/Identity_5:output:0"z
:qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource<qty_seq_while_lstm_cell_17_biasadd_readvariableop_resource_0"|
;qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource=qty_seq_while_lstm_cell_17_matmul_1_readvariableop_resource_0"x
9qty_seq_while_lstm_cell_17_matmul_readvariableop_resource;qty_seq_while_lstm_cell_17_matmul_readvariableop_resource_0"P
%qty_seq_while_qty_seq_strided_slice_1'qty_seq_while_qty_seq_strided_slice_1_0"�
aqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensorcqty_seq_while_tensorarrayv2read_tensorlistgetitem_qty_seq_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2f
1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp1Qty_Seq/while/lstm_cell_17/BiasAdd/ReadVariableOp2d
0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp0Qty_Seq/while/lstm_cell_17/MatMul/ReadVariableOp2h
2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp2Qty_Seq/while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
��
�	
C__inference_model_8_layer_call_and_return_conditional_losses_558297
inputs_0
inputs_1F
3qty_seq_lstm_cell_17_matmul_readvariableop_resource:	�H
5qty_seq_lstm_cell_17_matmul_1_readvariableop_resource:	 �C
4qty_seq_lstm_cell_17_biasadd_readvariableop_resource:	�G
4salt_seq_lstm_cell_16_matmul_readvariableop_resource:	�I
6salt_seq_lstm_cell_16_matmul_1_readvariableop_resource:	 �D
5salt_seq_lstm_cell_16_biasadd_readvariableop_resource:	�:
(connector_matmul_readvariableop_resource:@7
)connector_biasadd_readvariableop_resource::
(salt_pred_matmul_readvariableop_resource:7
)salt_pred_biasadd_readvariableop_resource:
identity�� Connector/BiasAdd/ReadVariableOp�Connector/MatMul/ReadVariableOp�+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp�*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp�,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp�Qty_Seq/while� Salt_Pred/BiasAdd/ReadVariableOp�Salt_Pred/MatMul/ReadVariableOp�,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp�+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp�-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp�Salt_Seq/whileE
Qty_Seq/ShapeShapeinputs_1*
T0*
_output_shapes
:e
Qty_Seq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Qty_Seq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Qty_Seq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_sliceStridedSliceQty_Seq/Shape:output:0$Qty_Seq/strided_slice/stack:output:0&Qty_Seq/strided_slice/stack_1:output:0&Qty_Seq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Qty_Seq/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Qty_Seq/zeros/packedPackQty_Seq/strided_slice:output:0Qty_Seq/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
Qty_Seq/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Qty_Seq/zerosFillQty_Seq/zeros/packed:output:0Qty_Seq/zeros/Const:output:0*
T0*'
_output_shapes
:��������� Z
Qty_Seq/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Qty_Seq/zeros_1/packedPackQty_Seq/strided_slice:output:0!Qty_Seq/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
Qty_Seq/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Qty_Seq/zeros_1FillQty_Seq/zeros_1/packed:output:0Qty_Seq/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� k
Qty_Seq/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
Qty_Seq/transpose	Transposeinputs_1Qty_Seq/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
Qty_Seq/Shape_1ShapeQty_Seq/transpose:y:0*
T0*
_output_shapes
:g
Qty_Seq/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Qty_Seq/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Qty_Seq/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_slice_1StridedSliceQty_Seq/Shape_1:output:0&Qty_Seq/strided_slice_1/stack:output:0(Qty_Seq/strided_slice_1/stack_1:output:0(Qty_Seq/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#Qty_Seq/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
Qty_Seq/TensorArrayV2TensorListReserve,Qty_Seq/TensorArrayV2/element_shape:output:0 Qty_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=Qty_Seq/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/Qty_Seq/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorQty_Seq/transpose:y:0FQty_Seq/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
Qty_Seq/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Qty_Seq/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Qty_Seq/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_slice_2StridedSliceQty_Seq/transpose:y:0&Qty_Seq/strided_slice_2/stack:output:0(Qty_Seq/strided_slice_2/stack_1:output:0(Qty_Seq/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3qty_seq_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Qty_Seq/lstm_cell_17/MatMulMatMul Qty_Seq/strided_slice_2:output:02Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5qty_seq_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
Qty_Seq/lstm_cell_17/MatMul_1MatMulQty_Seq/zeros:output:04Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Qty_Seq/lstm_cell_17/addAddV2%Qty_Seq/lstm_cell_17/MatMul:product:0'Qty_Seq/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4qty_seq_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qty_Seq/lstm_cell_17/BiasAddBiasAddQty_Seq/lstm_cell_17/add:z:03Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$Qty_Seq/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Qty_Seq/lstm_cell_17/splitSplit-Qty_Seq/lstm_cell_17/split/split_dim:output:0%Qty_Seq/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split~
Qty_Seq/lstm_cell_17/SigmoidSigmoid#Qty_Seq/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/Sigmoid_1Sigmoid#Qty_Seq/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/mulMul"Qty_Seq/lstm_cell_17/Sigmoid_1:y:0Qty_Seq/zeros_1:output:0*
T0*'
_output_shapes
:��������� x
Qty_Seq/lstm_cell_17/ReluRelu#Qty_Seq/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/mul_1Mul Qty_Seq/lstm_cell_17/Sigmoid:y:0'Qty_Seq/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/add_1AddV2Qty_Seq/lstm_cell_17/mul:z:0Qty_Seq/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/Sigmoid_2Sigmoid#Qty_Seq/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� u
Qty_Seq/lstm_cell_17/Relu_1ReluQty_Seq/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/mul_2Mul"Qty_Seq/lstm_cell_17/Sigmoid_2:y:0)Qty_Seq/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� v
%Qty_Seq/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Qty_Seq/TensorArrayV2_1TensorListReserve.Qty_Seq/TensorArrayV2_1/element_shape:output:0 Qty_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
Qty_Seq/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 Qty_Seq/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
Qty_Seq/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
Qty_Seq/whileWhile#Qty_Seq/while/loop_counter:output:0)Qty_Seq/while/maximum_iterations:output:0Qty_Seq/time:output:0 Qty_Seq/TensorArrayV2_1:handle:0Qty_Seq/zeros:output:0Qty_Seq/zeros_1:output:0 Qty_Seq/strided_slice_1:output:0?Qty_Seq/TensorArrayUnstack/TensorListFromTensor:output_handle:03qty_seq_lstm_cell_17_matmul_readvariableop_resource5qty_seq_lstm_cell_17_matmul_1_readvariableop_resource4qty_seq_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
Qty_Seq_while_body_558036*%
condR
Qty_Seq_while_cond_558035*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
8Qty_Seq/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
*Qty_Seq/TensorArrayV2Stack/TensorListStackTensorListStackQty_Seq/while:output:3AQty_Seq/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0p
Qty_Seq/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
Qty_Seq/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
Qty_Seq/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_slice_3StridedSlice3Qty_Seq/TensorArrayV2Stack/TensorListStack:tensor:0&Qty_Seq/strided_slice_3/stack:output:0(Qty_Seq/strided_slice_3/stack_1:output:0(Qty_Seq/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskm
Qty_Seq/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Qty_Seq/transpose_1	Transpose3Qty_Seq/TensorArrayV2Stack/TensorListStack:tensor:0!Qty_Seq/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� c
Qty_Seq/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    F
Salt_Seq/ShapeShapeinputs_0*
T0*
_output_shapes
:f
Salt_Seq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Salt_Seq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Salt_Seq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_sliceStridedSliceSalt_Seq/Shape:output:0%Salt_Seq/strided_slice/stack:output:0'Salt_Seq/strided_slice/stack_1:output:0'Salt_Seq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Salt_Seq/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Salt_Seq/zeros/packedPackSalt_Seq/strided_slice:output:0 Salt_Seq/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
Salt_Seq/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Salt_Seq/zerosFillSalt_Seq/zeros/packed:output:0Salt_Seq/zeros/Const:output:0*
T0*'
_output_shapes
:��������� [
Salt_Seq/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Salt_Seq/zeros_1/packedPackSalt_Seq/strided_slice:output:0"Salt_Seq/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
Salt_Seq/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Salt_Seq/zeros_1Fill Salt_Seq/zeros_1/packed:output:0Salt_Seq/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� l
Salt_Seq/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Salt_Seq/transpose	Transposeinputs_0 Salt_Seq/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
Salt_Seq/Shape_1ShapeSalt_Seq/transpose:y:0*
T0*
_output_shapes
:h
Salt_Seq/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 Salt_Seq/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 Salt_Seq/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_slice_1StridedSliceSalt_Seq/Shape_1:output:0'Salt_Seq/strided_slice_1/stack:output:0)Salt_Seq/strided_slice_1/stack_1:output:0)Salt_Seq/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$Salt_Seq/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
Salt_Seq/TensorArrayV2TensorListReserve-Salt_Seq/TensorArrayV2/element_shape:output:0!Salt_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>Salt_Seq/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0Salt_Seq/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSalt_Seq/transpose:y:0GSalt_Seq/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
Salt_Seq/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 Salt_Seq/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 Salt_Seq/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_slice_2StridedSliceSalt_Seq/transpose:y:0'Salt_Seq/strided_slice_2/stack:output:0)Salt_Seq/strided_slice_2/stack_1:output:0)Salt_Seq/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp4salt_seq_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Salt_Seq/lstm_cell_16/MatMulMatMul!Salt_Seq/strided_slice_2:output:03Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp6salt_seq_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
Salt_Seq/lstm_cell_16/MatMul_1MatMulSalt_Seq/zeros:output:05Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Salt_Seq/lstm_cell_16/addAddV2&Salt_Seq/lstm_cell_16/MatMul:product:0(Salt_Seq/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp5salt_seq_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Salt_Seq/lstm_cell_16/BiasAddBiasAddSalt_Seq/lstm_cell_16/add:z:04Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%Salt_Seq/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Salt_Seq/lstm_cell_16/splitSplit.Salt_Seq/lstm_cell_16/split/split_dim:output:0&Salt_Seq/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
Salt_Seq/lstm_cell_16/SigmoidSigmoid$Salt_Seq/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/Sigmoid_1Sigmoid$Salt_Seq/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/mulMul#Salt_Seq/lstm_cell_16/Sigmoid_1:y:0Salt_Seq/zeros_1:output:0*
T0*'
_output_shapes
:��������� z
Salt_Seq/lstm_cell_16/ReluRelu$Salt_Seq/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/mul_1Mul!Salt_Seq/lstm_cell_16/Sigmoid:y:0(Salt_Seq/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/add_1AddV2Salt_Seq/lstm_cell_16/mul:z:0Salt_Seq/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/Sigmoid_2Sigmoid$Salt_Seq/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� w
Salt_Seq/lstm_cell_16/Relu_1ReluSalt_Seq/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/mul_2Mul#Salt_Seq/lstm_cell_16/Sigmoid_2:y:0*Salt_Seq/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� w
&Salt_Seq/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Salt_Seq/TensorArrayV2_1TensorListReserve/Salt_Seq/TensorArrayV2_1/element_shape:output:0!Salt_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
Salt_Seq/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!Salt_Seq/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
Salt_Seq/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
Salt_Seq/whileWhile$Salt_Seq/while/loop_counter:output:0*Salt_Seq/while/maximum_iterations:output:0Salt_Seq/time:output:0!Salt_Seq/TensorArrayV2_1:handle:0Salt_Seq/zeros:output:0Salt_Seq/zeros_1:output:0!Salt_Seq/strided_slice_1:output:0@Salt_Seq/TensorArrayUnstack/TensorListFromTensor:output_handle:04salt_seq_lstm_cell_16_matmul_readvariableop_resource6salt_seq_lstm_cell_16_matmul_1_readvariableop_resource5salt_seq_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
Salt_Seq_while_body_558175*&
condR
Salt_Seq_while_cond_558174*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
9Salt_Seq/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
+Salt_Seq/TensorArrayV2Stack/TensorListStackTensorListStackSalt_Seq/while:output:3BSalt_Seq/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0q
Salt_Seq/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 Salt_Seq/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 Salt_Seq/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_slice_3StridedSlice4Salt_Seq/TensorArrayV2Stack/TensorListStack:tensor:0'Salt_Seq/strided_slice_3/stack:output:0)Salt_Seq/strided_slice_3/stack_1:output:0)Salt_Seq/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskn
Salt_Seq/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Salt_Seq/transpose_1	Transpose4Salt_Seq/TensorArrayV2Stack/TensorListStack:tensor:0"Salt_Seq/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� d
Salt_Seq/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_18/dropout/MulMul!Salt_Seq/strided_slice_3:output:0!dropout_18/dropout/Const:output:0*
T0*'
_output_shapes
:��������� i
dropout_18/dropout/ShapeShape!Salt_Seq/strided_slice_3:output:0*
T0*
_output_shapes
:�
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
dropout_18/dropout/CastCast#dropout_18/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
dropout_18/dropout/Mul_1Muldropout_18/dropout/Mul:z:0dropout_18/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� ]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_19/dropout/MulMul Qty_Seq/strided_slice_3:output:0!dropout_19/dropout/Const:output:0*
T0*'
_output_shapes
:��������� h
dropout_19/dropout/ShapeShape Qty_Seq/strided_slice_3:output:0*
T0*
_output_shapes
:�
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
dropout_19/dropout/CastCast#dropout_19/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
dropout_19/dropout/Mul_1Muldropout_19/dropout/Mul:z:0dropout_19/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� [
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_8/concatConcatV2dropout_18/dropout/Mul_1:z:0dropout_19/dropout/Mul_1:z:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
Connector/MatMul/ReadVariableOpReadVariableOp(connector_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
Connector/MatMulMatMulconcatenate_8/concat:output:0'Connector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 Connector/BiasAdd/ReadVariableOpReadVariableOp)connector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Connector/BiasAddBiasAddConnector/MatMul:product:0(Connector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������]
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_20/dropout/MulMulConnector/BiasAdd:output:0!dropout_20/dropout/Const:output:0*
T0*'
_output_shapes
:���������b
dropout_20/dropout/ShapeShapeConnector/BiasAdd:output:0*
T0*
_output_shapes
:�
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0f
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:����������
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*'
_output_shapes
:����������
Salt_Pred/MatMul/ReadVariableOpReadVariableOp(salt_pred_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
Salt_Pred/MatMulMatMuldropout_20/dropout/Mul_1:z:0'Salt_Pred/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 Salt_Pred/BiasAdd/ReadVariableOpReadVariableOp)salt_pred_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Salt_Pred/BiasAddBiasAddSalt_Pred/MatMul:product:0(Salt_Pred/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitySalt_Pred/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Connector/BiasAdd/ReadVariableOp ^Connector/MatMul/ReadVariableOp,^Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp+^Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp-^Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp^Qty_Seq/while!^Salt_Pred/BiasAdd/ReadVariableOp ^Salt_Pred/MatMul/ReadVariableOp-^Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp,^Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp.^Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp^Salt_Seq/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2D
 Connector/BiasAdd/ReadVariableOp Connector/BiasAdd/ReadVariableOp2B
Connector/MatMul/ReadVariableOpConnector/MatMul/ReadVariableOp2Z
+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp2X
*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp2\
,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp2
Qty_Seq/whileQty_Seq/while2D
 Salt_Pred/BiasAdd/ReadVariableOp Salt_Pred/BiasAdd/ReadVariableOp2B
Salt_Pred/MatMul/ReadVariableOpSalt_Pred/MatMul/ReadVariableOp2\
,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp2Z
+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp2^
-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp2 
Salt_Seq/whileSalt_Seq/while:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/1
�L
�
"model_8_Salt_Seq_while_body_555819>
:model_8_salt_seq_while_model_8_salt_seq_while_loop_counterD
@model_8_salt_seq_while_model_8_salt_seq_while_maximum_iterations&
"model_8_salt_seq_while_placeholder(
$model_8_salt_seq_while_placeholder_1(
$model_8_salt_seq_while_placeholder_2(
$model_8_salt_seq_while_placeholder_3=
9model_8_salt_seq_while_model_8_salt_seq_strided_slice_1_0y
umodel_8_salt_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_salt_seq_tensorarrayunstack_tensorlistfromtensor_0W
Dmodel_8_salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0:	�Y
Fmodel_8_salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �T
Emodel_8_salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0:	�#
model_8_salt_seq_while_identity%
!model_8_salt_seq_while_identity_1%
!model_8_salt_seq_while_identity_2%
!model_8_salt_seq_while_identity_3%
!model_8_salt_seq_while_identity_4%
!model_8_salt_seq_while_identity_5;
7model_8_salt_seq_while_model_8_salt_seq_strided_slice_1w
smodel_8_salt_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_salt_seq_tensorarrayunstack_tensorlistfromtensorU
Bmodel_8_salt_seq_while_lstm_cell_16_matmul_readvariableop_resource:	�W
Dmodel_8_salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource:	 �R
Cmodel_8_salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource:	���:model_8/Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp�9model_8/Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp�;model_8/Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp�
Hmodel_8/Salt_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:model_8/Salt_Seq/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumodel_8_salt_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_salt_seq_tensorarrayunstack_tensorlistfromtensor_0"model_8_salt_seq_while_placeholderQmodel_8/Salt_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
9model_8/Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOpDmodel_8_salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
*model_8/Salt_Seq/while/lstm_cell_16/MatMulMatMulAmodel_8/Salt_Seq/while/TensorArrayV2Read/TensorListGetItem:item:0Amodel_8/Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;model_8/Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOpFmodel_8_salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
,model_8/Salt_Seq/while/lstm_cell_16/MatMul_1MatMul$model_8_salt_seq_while_placeholder_2Cmodel_8/Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_8/Salt_Seq/while/lstm_cell_16/addAddV24model_8/Salt_Seq/while/lstm_cell_16/MatMul:product:06model_8/Salt_Seq/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:model_8/Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOpEmodel_8_salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
+model_8/Salt_Seq/while/lstm_cell_16/BiasAddBiasAdd+model_8/Salt_Seq/while/lstm_cell_16/add:z:0Bmodel_8/Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3model_8/Salt_Seq/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)model_8/Salt_Seq/while/lstm_cell_16/splitSplit<model_8/Salt_Seq/while/lstm_cell_16/split/split_dim:output:04model_8/Salt_Seq/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
+model_8/Salt_Seq/while/lstm_cell_16/SigmoidSigmoid2model_8/Salt_Seq/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� �
-model_8/Salt_Seq/while/lstm_cell_16/Sigmoid_1Sigmoid2model_8/Salt_Seq/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
'model_8/Salt_Seq/while/lstm_cell_16/mulMul1model_8/Salt_Seq/while/lstm_cell_16/Sigmoid_1:y:0$model_8_salt_seq_while_placeholder_3*
T0*'
_output_shapes
:��������� �
(model_8/Salt_Seq/while/lstm_cell_16/ReluRelu2model_8/Salt_Seq/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
)model_8/Salt_Seq/while/lstm_cell_16/mul_1Mul/model_8/Salt_Seq/while/lstm_cell_16/Sigmoid:y:06model_8/Salt_Seq/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
)model_8/Salt_Seq/while/lstm_cell_16/add_1AddV2+model_8/Salt_Seq/while/lstm_cell_16/mul:z:0-model_8/Salt_Seq/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� �
-model_8/Salt_Seq/while/lstm_cell_16/Sigmoid_2Sigmoid2model_8/Salt_Seq/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� �
*model_8/Salt_Seq/while/lstm_cell_16/Relu_1Relu-model_8/Salt_Seq/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
)model_8/Salt_Seq/while/lstm_cell_16/mul_2Mul1model_8/Salt_Seq/while/lstm_cell_16/Sigmoid_2:y:08model_8/Salt_Seq/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
;model_8/Salt_Seq/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$model_8_salt_seq_while_placeholder_1"model_8_salt_seq_while_placeholder-model_8/Salt_Seq/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
model_8/Salt_Seq/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/Salt_Seq/while/addAddV2"model_8_salt_seq_while_placeholder%model_8/Salt_Seq/while/add/y:output:0*
T0*
_output_shapes
: `
model_8/Salt_Seq/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/Salt_Seq/while/add_1AddV2:model_8_salt_seq_while_model_8_salt_seq_while_loop_counter'model_8/Salt_Seq/while/add_1/y:output:0*
T0*
_output_shapes
: �
model_8/Salt_Seq/while/IdentityIdentity model_8/Salt_Seq/while/add_1:z:0^model_8/Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
!model_8/Salt_Seq/while/Identity_1Identity@model_8_salt_seq_while_model_8_salt_seq_while_maximum_iterations^model_8/Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
!model_8/Salt_Seq/while/Identity_2Identitymodel_8/Salt_Seq/while/add:z:0^model_8/Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
!model_8/Salt_Seq/while/Identity_3IdentityKmodel_8/Salt_Seq/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_8/Salt_Seq/while/NoOp*
T0*
_output_shapes
: :����
!model_8/Salt_Seq/while/Identity_4Identity-model_8/Salt_Seq/while/lstm_cell_16/mul_2:z:0^model_8/Salt_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
!model_8/Salt_Seq/while/Identity_5Identity-model_8/Salt_Seq/while/lstm_cell_16/add_1:z:0^model_8/Salt_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
model_8/Salt_Seq/while/NoOpNoOp;^model_8/Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp:^model_8/Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp<^model_8/Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "K
model_8_salt_seq_while_identity(model_8/Salt_Seq/while/Identity:output:0"O
!model_8_salt_seq_while_identity_1*model_8/Salt_Seq/while/Identity_1:output:0"O
!model_8_salt_seq_while_identity_2*model_8/Salt_Seq/while/Identity_2:output:0"O
!model_8_salt_seq_while_identity_3*model_8/Salt_Seq/while/Identity_3:output:0"O
!model_8_salt_seq_while_identity_4*model_8/Salt_Seq/while/Identity_4:output:0"O
!model_8_salt_seq_while_identity_5*model_8/Salt_Seq/while/Identity_5:output:0"�
Cmodel_8_salt_seq_while_lstm_cell_16_biasadd_readvariableop_resourceEmodel_8_salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0"�
Dmodel_8_salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resourceFmodel_8_salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0"�
Bmodel_8_salt_seq_while_lstm_cell_16_matmul_readvariableop_resourceDmodel_8_salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0"t
7model_8_salt_seq_while_model_8_salt_seq_strided_slice_19model_8_salt_seq_while_model_8_salt_seq_strided_slice_1_0"�
smodel_8_salt_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_salt_seq_tensorarrayunstack_tensorlistfromtensorumodel_8_salt_seq_while_tensorarrayv2read_tensorlistgetitem_model_8_salt_seq_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2x
:model_8/Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp:model_8/Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2v
9model_8/Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp9model_8/Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp2z
;model_8/Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp;model_8/Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_Salt_Seq_layer_call_fn_558347
inputs_0
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556261o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
)__inference_Salt_Seq_layer_call_fn_558336
inputs_0
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556070o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
while_body_558428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	�F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_16_biasadd_readvariableop_resource:	���)while/lstm_cell_16/BiasAdd/ReadVariableOp�(while/lstm_cell_16/MatMul/ReadVariableOp�*while/lstm_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
"model_8_Salt_Seq_while_cond_555818>
:model_8_salt_seq_while_model_8_salt_seq_while_loop_counterD
@model_8_salt_seq_while_model_8_salt_seq_while_maximum_iterations&
"model_8_salt_seq_while_placeholder(
$model_8_salt_seq_while_placeholder_1(
$model_8_salt_seq_while_placeholder_2(
$model_8_salt_seq_while_placeholder_3@
<model_8_salt_seq_while_less_model_8_salt_seq_strided_slice_1V
Rmodel_8_salt_seq_while_model_8_salt_seq_while_cond_555818___redundant_placeholder0V
Rmodel_8_salt_seq_while_model_8_salt_seq_while_cond_555818___redundant_placeholder1V
Rmodel_8_salt_seq_while_model_8_salt_seq_while_cond_555818___redundant_placeholder2V
Rmodel_8_salt_seq_while_model_8_salt_seq_while_cond_555818___redundant_placeholder3#
model_8_salt_seq_while_identity
�
model_8/Salt_Seq/while/LessLess"model_8_salt_seq_while_placeholder<model_8_salt_seq_while_less_model_8_salt_seq_strided_slice_1*
T0*
_output_shapes
: m
model_8/Salt_Seq/while/IdentityIdentitymodel_8/Salt_Seq/while/Less:z:0*
T0
*
_output_shapes
: "K
model_8_salt_seq_while_identity(model_8/Salt_Seq/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_557267

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	�@
-lstm_cell_16_matmul_1_readvariableop_resource:	 �;
,lstm_cell_16_biasadd_readvariableop_resource:	�
identity��#lstm_cell_16/BiasAdd/ReadVariableOp�"lstm_cell_16/MatMul/ReadVariableOp�$lstm_cell_16/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_557183*
condR
while_cond_557182*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_559329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559329___redundant_placeholder04
0while_while_cond_559329___redundant_placeholder14
0while_while_cond_559329___redundant_placeholder24
0while_while_cond_559329___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�8
�
while_body_556687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	�F
3while_lstm_cell_17_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_17_biasadd_readvariableop_resource:	���)while/lstm_cell_17/BiasAdd/ReadVariableOp�(while/lstm_cell_17/MatMul/ReadVariableOp�*while/lstm_cell_17/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�8
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556611

inputs&
lstm_cell_17_556529:	�&
lstm_cell_17_556531:	 �"
lstm_cell_17_556533:	�
identity��$lstm_cell_17/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_556529lstm_cell_17_556531lstm_cell_17_556533*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556483n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_556529lstm_cell_17_556531lstm_cell_17_556533*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_556542*
condR
while_cond_556541*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� u
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_559755

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�	
e
F__inference_dropout_20_layer_call_and_return_conditional_losses_559670

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_559689

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_20_layer_call_fn_559653

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_557045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�(
�
C__inference_model_8_layer_call_and_return_conditional_losses_557503

inputs
inputs_1!
qty_seq_557474:	�!
qty_seq_557476:	 �
qty_seq_557478:	�"
salt_seq_557481:	�"
salt_seq_557483:	 �
salt_seq_557485:	�"
connector_557491:@
connector_557493:"
salt_pred_557497:
salt_pred_557499:
identity��!Connector/StatefulPartitionedCall�Qty_Seq/StatefulPartitionedCall�!Salt_Pred/StatefulPartitionedCall� Salt_Seq/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�"dropout_20/StatefulPartitionedCall�
Qty_Seq/StatefulPartitionedCallStatefulPartitionedCallinputs_1qty_seq_557474qty_seq_557476qty_seq_557478*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_557432�
 Salt_Seq/StatefulPartitionedCallStatefulPartitionedCallinputssalt_seq_557481salt_seq_557483salt_seq_557485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_557267�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)Salt_Seq/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_557108�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall(Qty_Seq/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_557085�
concatenate_8/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0+dropout_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_556950�
!Connector/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0connector_557491connector_557493*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Connector_layer_call_and_return_conditional_losses_556962�
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall*Connector/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_557045�
!Salt_Pred/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0salt_pred_557497salt_pred_557499*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_556985y
IdentityIdentity*Salt_Pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Connector/StatefulPartitionedCall ^Qty_Seq/StatefulPartitionedCall"^Salt_Pred/StatefulPartitionedCall!^Salt_Seq/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2F
!Connector/StatefulPartitionedCall!Connector/StatefulPartitionedCall2B
Qty_Seq/StatefulPartitionedCallQty_Seq/StatefulPartitionedCall2F
!Salt_Pred/StatefulPartitionedCall!Salt_Pred/StatefulPartitionedCall2D
 Salt_Seq/StatefulPartitionedCall Salt_Seq/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:SO
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
s
I__inference_concatenate_8_layer_call_and_return_conditional_losses_556950

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:��������� :��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_557347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557347___redundant_placeholder04
0while_while_cond_557347___redundant_placeholder14
0while_while_cond_557347___redundant_placeholder24
0while_while_cond_557347___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_558713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558713___redundant_placeholder04
0while_while_cond_558713___redundant_placeholder14
0while_while_cond_558713___redundant_placeholder24
0while_while_cond_558713___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_559186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559186___redundant_placeholder04
0while_while_cond_559186___redundant_placeholder14
0while_while_cond_559186___redundant_placeholder24
0while_while_cond_559186___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_556191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_556191___redundant_placeholder04
0while_while_cond_556191___redundant_placeholder14
0while_while_cond_556191___redundant_placeholder24
0while_while_cond_556191___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�

�
Salt_Seq_while_cond_557874.
*salt_seq_while_salt_seq_while_loop_counter4
0salt_seq_while_salt_seq_while_maximum_iterations
salt_seq_while_placeholder 
salt_seq_while_placeholder_1 
salt_seq_while_placeholder_2 
salt_seq_while_placeholder_30
,salt_seq_while_less_salt_seq_strided_slice_1F
Bsalt_seq_while_salt_seq_while_cond_557874___redundant_placeholder0F
Bsalt_seq_while_salt_seq_while_cond_557874___redundant_placeholder1F
Bsalt_seq_while_salt_seq_while_cond_557874___redundant_placeholder2F
Bsalt_seq_while_salt_seq_while_cond_557874___redundant_placeholder3
salt_seq_while_identity
�
Salt_Seq/while/LessLesssalt_seq_while_placeholder,salt_seq_while_less_salt_seq_strided_slice_1*
T0*
_output_shapes
: ]
Salt_Seq/while/IdentityIdentitySalt_Seq/while/Less:z:0*
T0
*
_output_shapes
: ";
salt_seq_while_identity Salt_Seq/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558655
inputs_0>
+lstm_cell_16_matmul_readvariableop_resource:	�@
-lstm_cell_16_matmul_1_readvariableop_resource:	 �;
,lstm_cell_16_biasadd_readvariableop_resource:	�
identity��#lstm_cell_16/BiasAdd/ReadVariableOp�"lstm_cell_16/MatMul/ReadVariableOp�$lstm_cell_16/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_558571*
condR
while_cond_558570*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
(__inference_model_8_layer_call_fn_557650
inputs_0
inputs_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	�
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_556992o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/1
�	
�
E__inference_Connector_layer_call_and_return_conditional_losses_559643

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
u
I__inference_concatenate_8_layer_call_and_return_conditional_losses_559624
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:��������� :��������� :Q M
'
_output_shapes
:��������� 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
inputs/1
�
d
F__inference_dropout_19_layer_call_and_return_conditional_losses_556941

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
d
+__inference_dropout_19_layer_call_fn_559594

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_557085o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�P
�
__inference__traced_save_560020
file_prefix/
+savev2_connector_kernel_read_readvariableop-
)savev2_connector_bias_read_readvariableop/
+savev2_salt_pred_kernel_read_readvariableop-
)savev2_salt_pred_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop;
7savev2_salt_seq_lstm_cell_16_kernel_read_readvariableopE
Asavev2_salt_seq_lstm_cell_16_recurrent_kernel_read_readvariableop9
5savev2_salt_seq_lstm_cell_16_bias_read_readvariableop:
6savev2_qty_seq_lstm_cell_17_kernel_read_readvariableopD
@savev2_qty_seq_lstm_cell_17_recurrent_kernel_read_readvariableop8
4savev2_qty_seq_lstm_cell_17_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_connector_kernel_m_read_readvariableop4
0savev2_adam_connector_bias_m_read_readvariableop6
2savev2_adam_salt_pred_kernel_m_read_readvariableop4
0savev2_adam_salt_pred_bias_m_read_readvariableopB
>savev2_adam_salt_seq_lstm_cell_16_kernel_m_read_readvariableopL
Hsavev2_adam_salt_seq_lstm_cell_16_recurrent_kernel_m_read_readvariableop@
<savev2_adam_salt_seq_lstm_cell_16_bias_m_read_readvariableopA
=savev2_adam_qty_seq_lstm_cell_17_kernel_m_read_readvariableopK
Gsavev2_adam_qty_seq_lstm_cell_17_recurrent_kernel_m_read_readvariableop?
;savev2_adam_qty_seq_lstm_cell_17_bias_m_read_readvariableop6
2savev2_adam_connector_kernel_v_read_readvariableop4
0savev2_adam_connector_bias_v_read_readvariableop6
2savev2_adam_salt_pred_kernel_v_read_readvariableop4
0savev2_adam_salt_pred_bias_v_read_readvariableopB
>savev2_adam_salt_seq_lstm_cell_16_kernel_v_read_readvariableopL
Hsavev2_adam_salt_seq_lstm_cell_16_recurrent_kernel_v_read_readvariableop@
<savev2_adam_salt_seq_lstm_cell_16_bias_v_read_readvariableopA
=savev2_adam_qty_seq_lstm_cell_17_kernel_v_read_readvariableopK
Gsavev2_adam_qty_seq_lstm_cell_17_recurrent_kernel_v_read_readvariableop?
;savev2_adam_qty_seq_lstm_cell_17_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*�
value�B�&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_connector_kernel_read_readvariableop)savev2_connector_bias_read_readvariableop+savev2_salt_pred_kernel_read_readvariableop)savev2_salt_pred_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop7savev2_salt_seq_lstm_cell_16_kernel_read_readvariableopAsavev2_salt_seq_lstm_cell_16_recurrent_kernel_read_readvariableop5savev2_salt_seq_lstm_cell_16_bias_read_readvariableop6savev2_qty_seq_lstm_cell_17_kernel_read_readvariableop@savev2_qty_seq_lstm_cell_17_recurrent_kernel_read_readvariableop4savev2_qty_seq_lstm_cell_17_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_connector_kernel_m_read_readvariableop0savev2_adam_connector_bias_m_read_readvariableop2savev2_adam_salt_pred_kernel_m_read_readvariableop0savev2_adam_salt_pred_bias_m_read_readvariableop>savev2_adam_salt_seq_lstm_cell_16_kernel_m_read_readvariableopHsavev2_adam_salt_seq_lstm_cell_16_recurrent_kernel_m_read_readvariableop<savev2_adam_salt_seq_lstm_cell_16_bias_m_read_readvariableop=savev2_adam_qty_seq_lstm_cell_17_kernel_m_read_readvariableopGsavev2_adam_qty_seq_lstm_cell_17_recurrent_kernel_m_read_readvariableop;savev2_adam_qty_seq_lstm_cell_17_bias_m_read_readvariableop2savev2_adam_connector_kernel_v_read_readvariableop0savev2_adam_connector_bias_v_read_readvariableop2savev2_adam_salt_pred_kernel_v_read_readvariableop0savev2_adam_salt_pred_bias_v_read_readvariableop>savev2_adam_salt_seq_lstm_cell_16_kernel_v_read_readvariableopHsavev2_adam_salt_seq_lstm_cell_16_recurrent_kernel_v_read_readvariableop<savev2_adam_salt_seq_lstm_cell_16_bias_v_read_readvariableop=savev2_adam_qty_seq_lstm_cell_17_kernel_v_read_readvariableopGsavev2_adam_qty_seq_lstm_cell_17_recurrent_kernel_v_read_readvariableop;savev2_adam_qty_seq_lstm_cell_17_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:::: : : : : :	�:	 �:�:	�:	 �:�: : :@::::	�:	 �:�:	�:	 �:�:@::::	�:	 �:�:	�:	 �:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	�:%!

_output_shapes
:	 �:!

_output_shapes	
:�:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::% !

_output_shapes
:	�:%!!

_output_shapes
:	 �:!"

_output_shapes	
:�:%#!

_output_shapes
:	�:%$!

_output_shapes
:	 �:!%

_output_shapes	
:�:&

_output_shapes
: 
�
�
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556483

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�8
�
while_body_559044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	�F
3while_lstm_cell_17_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_17_biasadd_readvariableop_resource:	���)while/lstm_cell_17/BiasAdd/ReadVariableOp�(while/lstm_cell_17/MatMul/ReadVariableOp�*while/lstm_cell_17/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�"
�
while_body_556351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_17_556375_0:	�.
while_lstm_cell_17_556377_0:	 �*
while_lstm_cell_17_556379_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_17_556375:	�,
while_lstm_cell_17_556377:	 �(
while_lstm_cell_17_556379:	���*while/lstm_cell_17/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_556375_0while_lstm_cell_17_556377_0while_lstm_cell_17_556379_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556337�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� y

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_17_556375while_lstm_cell_17_556375_0"8
while_lstm_cell_17_556377while_lstm_cell_17_556377_0"8
while_lstm_cell_17_556379while_lstm_cell_17_556379_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�B
�

Salt_Seq_while_body_557875.
*salt_seq_while_salt_seq_while_loop_counter4
0salt_seq_while_salt_seq_while_maximum_iterations
salt_seq_while_placeholder 
salt_seq_while_placeholder_1 
salt_seq_while_placeholder_2 
salt_seq_while_placeholder_3-
)salt_seq_while_salt_seq_strided_slice_1_0i
esalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensor_0O
<salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0:	�Q
>salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �L
=salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
salt_seq_while_identity
salt_seq_while_identity_1
salt_seq_while_identity_2
salt_seq_while_identity_3
salt_seq_while_identity_4
salt_seq_while_identity_5+
'salt_seq_while_salt_seq_strided_slice_1g
csalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensorM
:salt_seq_while_lstm_cell_16_matmul_readvariableop_resource:	�O
<salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource:	 �J
;salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource:	���2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp�1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp�3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp�
@Salt_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2Salt_Seq/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemesalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensor_0salt_seq_while_placeholderISalt_Seq/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp<salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
"Salt_Seq/while/lstm_cell_16/MatMulMatMul9Salt_Seq/while/TensorArrayV2Read/TensorListGetItem:item:09Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp>salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
$Salt_Seq/while/lstm_cell_16/MatMul_1MatMulsalt_seq_while_placeholder_2;Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Salt_Seq/while/lstm_cell_16/addAddV2,Salt_Seq/while/lstm_cell_16/MatMul:product:0.Salt_Seq/while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp=salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
#Salt_Seq/while/lstm_cell_16/BiasAddBiasAdd#Salt_Seq/while/lstm_cell_16/add:z:0:Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������m
+Salt_Seq/while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!Salt_Seq/while/lstm_cell_16/splitSplit4Salt_Seq/while/lstm_cell_16/split/split_dim:output:0,Salt_Seq/while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
#Salt_Seq/while/lstm_cell_16/SigmoidSigmoid*Salt_Seq/while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� �
%Salt_Seq/while/lstm_cell_16/Sigmoid_1Sigmoid*Salt_Seq/while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
Salt_Seq/while/lstm_cell_16/mulMul)Salt_Seq/while/lstm_cell_16/Sigmoid_1:y:0salt_seq_while_placeholder_3*
T0*'
_output_shapes
:��������� �
 Salt_Seq/while/lstm_cell_16/ReluRelu*Salt_Seq/while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
!Salt_Seq/while/lstm_cell_16/mul_1Mul'Salt_Seq/while/lstm_cell_16/Sigmoid:y:0.Salt_Seq/while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
!Salt_Seq/while/lstm_cell_16/add_1AddV2#Salt_Seq/while/lstm_cell_16/mul:z:0%Salt_Seq/while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� �
%Salt_Seq/while/lstm_cell_16/Sigmoid_2Sigmoid*Salt_Seq/while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� �
"Salt_Seq/while/lstm_cell_16/Relu_1Relu%Salt_Seq/while/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
!Salt_Seq/while/lstm_cell_16/mul_2Mul)Salt_Seq/while/lstm_cell_16/Sigmoid_2:y:00Salt_Seq/while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
3Salt_Seq/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemsalt_seq_while_placeholder_1salt_seq_while_placeholder%Salt_Seq/while/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���V
Salt_Seq/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
Salt_Seq/while/addAddV2salt_seq_while_placeholderSalt_Seq/while/add/y:output:0*
T0*
_output_shapes
: X
Salt_Seq/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
Salt_Seq/while/add_1AddV2*salt_seq_while_salt_seq_while_loop_counterSalt_Seq/while/add_1/y:output:0*
T0*
_output_shapes
: t
Salt_Seq/while/IdentityIdentitySalt_Seq/while/add_1:z:0^Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
Salt_Seq/while/Identity_1Identity0salt_seq_while_salt_seq_while_maximum_iterations^Salt_Seq/while/NoOp*
T0*
_output_shapes
: t
Salt_Seq/while/Identity_2IdentitySalt_Seq/while/add:z:0^Salt_Seq/while/NoOp*
T0*
_output_shapes
: �
Salt_Seq/while/Identity_3IdentityCSalt_Seq/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^Salt_Seq/while/NoOp*
T0*
_output_shapes
: :����
Salt_Seq/while/Identity_4Identity%Salt_Seq/while/lstm_cell_16/mul_2:z:0^Salt_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Salt_Seq/while/Identity_5Identity%Salt_Seq/while/lstm_cell_16/add_1:z:0^Salt_Seq/while/NoOp*
T0*'
_output_shapes
:��������� �
Salt_Seq/while/NoOpNoOp3^Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2^Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp4^Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
salt_seq_while_identity Salt_Seq/while/Identity:output:0"?
salt_seq_while_identity_1"Salt_Seq/while/Identity_1:output:0"?
salt_seq_while_identity_2"Salt_Seq/while/Identity_2:output:0"?
salt_seq_while_identity_3"Salt_Seq/while/Identity_3:output:0"?
salt_seq_while_identity_4"Salt_Seq/while/Identity_4:output:0"?
salt_seq_while_identity_5"Salt_Seq/while/Identity_5:output:0"|
;salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource=salt_seq_while_lstm_cell_16_biasadd_readvariableop_resource_0"~
<salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource>salt_seq_while_lstm_cell_16_matmul_1_readvariableop_resource_0"z
:salt_seq_while_lstm_cell_16_matmul_readvariableop_resource<salt_seq_while_lstm_cell_16_matmul_readvariableop_resource_0"T
'salt_seq_while_salt_seq_strided_slice_1)salt_seq_while_salt_seq_strided_slice_1_0"�
csalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensoresalt_seq_while_tensorarrayv2read_tensorlistgetitem_salt_seq_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2h
2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2Salt_Seq/while/lstm_cell_16/BiasAdd/ReadVariableOp2f
1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp1Salt_Seq/while/lstm_cell_16/MatMul/ReadVariableOp2j
3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp3Salt_Seq/while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556337

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_556133

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_559885

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
��
�
"__inference__traced_restore_560141
file_prefix3
!assignvariableop_connector_kernel:@/
!assignvariableop_1_connector_bias:5
#assignvariableop_2_salt_pred_kernel:/
!assignvariableop_3_salt_pred_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: B
/assignvariableop_9_salt_seq_lstm_cell_16_kernel:	�M
:assignvariableop_10_salt_seq_lstm_cell_16_recurrent_kernel:	 �=
.assignvariableop_11_salt_seq_lstm_cell_16_bias:	�B
/assignvariableop_12_qty_seq_lstm_cell_17_kernel:	�L
9assignvariableop_13_qty_seq_lstm_cell_17_recurrent_kernel:	 �<
-assignvariableop_14_qty_seq_lstm_cell_17_bias:	�#
assignvariableop_15_total: #
assignvariableop_16_count: =
+assignvariableop_17_adam_connector_kernel_m:@7
)assignvariableop_18_adam_connector_bias_m:=
+assignvariableop_19_adam_salt_pred_kernel_m:7
)assignvariableop_20_adam_salt_pred_bias_m:J
7assignvariableop_21_adam_salt_seq_lstm_cell_16_kernel_m:	�T
Aassignvariableop_22_adam_salt_seq_lstm_cell_16_recurrent_kernel_m:	 �D
5assignvariableop_23_adam_salt_seq_lstm_cell_16_bias_m:	�I
6assignvariableop_24_adam_qty_seq_lstm_cell_17_kernel_m:	�S
@assignvariableop_25_adam_qty_seq_lstm_cell_17_recurrent_kernel_m:	 �C
4assignvariableop_26_adam_qty_seq_lstm_cell_17_bias_m:	�=
+assignvariableop_27_adam_connector_kernel_v:@7
)assignvariableop_28_adam_connector_bias_v:=
+assignvariableop_29_adam_salt_pred_kernel_v:7
)assignvariableop_30_adam_salt_pred_bias_v:J
7assignvariableop_31_adam_salt_seq_lstm_cell_16_kernel_v:	�T
Aassignvariableop_32_adam_salt_seq_lstm_cell_16_recurrent_kernel_v:	 �D
5assignvariableop_33_adam_salt_seq_lstm_cell_16_bias_v:	�I
6assignvariableop_34_adam_qty_seq_lstm_cell_17_kernel_v:	�S
@assignvariableop_35_adam_qty_seq_lstm_cell_17_recurrent_kernel_v:	 �C
4assignvariableop_36_adam_qty_seq_lstm_cell_17_bias_v:	�
identity_38��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*�
value�B�&B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_connector_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_connector_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_salt_pred_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_salt_pred_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp/assignvariableop_9_salt_seq_lstm_cell_16_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp:assignvariableop_10_salt_seq_lstm_cell_16_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp.assignvariableop_11_salt_seq_lstm_cell_16_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_qty_seq_lstm_cell_17_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp9assignvariableop_13_qty_seq_lstm_cell_17_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_qty_seq_lstm_cell_17_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_connector_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_connector_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_salt_pred_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_salt_pred_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp7assignvariableop_21_adam_salt_seq_lstm_cell_16_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpAassignvariableop_22_adam_salt_seq_lstm_cell_16_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp5assignvariableop_23_adam_salt_seq_lstm_cell_16_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_qty_seq_lstm_cell_17_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_qty_seq_lstm_cell_17_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_qty_seq_lstm_cell_17_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_connector_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_connector_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_salt_pred_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_salt_pred_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp7assignvariableop_31_adam_salt_seq_lstm_cell_16_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpAassignvariableop_32_adam_salt_seq_lstm_cell_16_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adam_salt_seq_lstm_cell_16_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_adam_qty_seq_lstm_cell_17_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp@assignvariableop_35_adam_qty_seq_lstm_cell_17_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_qty_seq_lstm_cell_17_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�$
�
C__inference_model_8_layer_call_and_return_conditional_losses_557585
	salt_data
quantity_data!
qty_seq_557556:	�!
qty_seq_557558:	 �
qty_seq_557560:	�"
salt_seq_557563:	�"
salt_seq_557565:	 �
salt_seq_557567:	�"
connector_557573:@
connector_557575:"
salt_pred_557579:
salt_pred_557581:
identity��!Connector/StatefulPartitionedCall�Qty_Seq/StatefulPartitionedCall�!Salt_Pred/StatefulPartitionedCall� Salt_Seq/StatefulPartitionedCall�
Qty_Seq/StatefulPartitionedCallStatefulPartitionedCallquantity_dataqty_seq_557556qty_seq_557558qty_seq_557560*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556771�
 Salt_Seq/StatefulPartitionedCallStatefulPartitionedCall	salt_datasalt_seq_557563salt_seq_557565salt_seq_557567*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556921�
dropout_18/PartitionedCallPartitionedCall)Salt_Seq/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_556934�
dropout_19/PartitionedCallPartitionedCall(Qty_Seq/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_556941�
concatenate_8/PartitionedCallPartitionedCall#dropout_18/PartitionedCall:output:0#dropout_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_556950�
!Connector/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0connector_557573connector_557575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Connector_layer_call_and_return_conditional_losses_556962�
dropout_20/PartitionedCallPartitionedCall*Connector/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_556973�
!Salt_Pred/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0salt_pred_557579salt_pred_557581*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_556985y
IdentityIdentity*Salt_Pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Connector/StatefulPartitionedCall ^Qty_Seq/StatefulPartitionedCall"^Salt_Pred/StatefulPartitionedCall!^Salt_Seq/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2F
!Connector/StatefulPartitionedCall!Connector/StatefulPartitionedCall2B
Qty_Seq/StatefulPartitionedCallQty_Seq/StatefulPartitionedCall2F
!Salt_Pred/StatefulPartitionedCall!Salt_Pred/StatefulPartitionedCall2D
 Salt_Seq/StatefulPartitionedCall Salt_Seq/StatefulPartitionedCall:V R
+
_output_shapes
:���������
#
_user_specified_name	Salt_Data:ZV
+
_output_shapes
:���������
'
_user_specified_nameQuantity_Data
�
�	
C__inference_model_8_layer_call_and_return_conditional_losses_557976
inputs_0
inputs_1F
3qty_seq_lstm_cell_17_matmul_readvariableop_resource:	�H
5qty_seq_lstm_cell_17_matmul_1_readvariableop_resource:	 �C
4qty_seq_lstm_cell_17_biasadd_readvariableop_resource:	�G
4salt_seq_lstm_cell_16_matmul_readvariableop_resource:	�I
6salt_seq_lstm_cell_16_matmul_1_readvariableop_resource:	 �D
5salt_seq_lstm_cell_16_biasadd_readvariableop_resource:	�:
(connector_matmul_readvariableop_resource:@7
)connector_biasadd_readvariableop_resource::
(salt_pred_matmul_readvariableop_resource:7
)salt_pred_biasadd_readvariableop_resource:
identity�� Connector/BiasAdd/ReadVariableOp�Connector/MatMul/ReadVariableOp�+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp�*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp�,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp�Qty_Seq/while� Salt_Pred/BiasAdd/ReadVariableOp�Salt_Pred/MatMul/ReadVariableOp�,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp�+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp�-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp�Salt_Seq/whileE
Qty_Seq/ShapeShapeinputs_1*
T0*
_output_shapes
:e
Qty_Seq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Qty_Seq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Qty_Seq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_sliceStridedSliceQty_Seq/Shape:output:0$Qty_Seq/strided_slice/stack:output:0&Qty_Seq/strided_slice/stack_1:output:0&Qty_Seq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Qty_Seq/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Qty_Seq/zeros/packedPackQty_Seq/strided_slice:output:0Qty_Seq/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
Qty_Seq/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Qty_Seq/zerosFillQty_Seq/zeros/packed:output:0Qty_Seq/zeros/Const:output:0*
T0*'
_output_shapes
:��������� Z
Qty_Seq/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Qty_Seq/zeros_1/packedPackQty_Seq/strided_slice:output:0!Qty_Seq/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
Qty_Seq/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Qty_Seq/zeros_1FillQty_Seq/zeros_1/packed:output:0Qty_Seq/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� k
Qty_Seq/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
Qty_Seq/transpose	Transposeinputs_1Qty_Seq/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
Qty_Seq/Shape_1ShapeQty_Seq/transpose:y:0*
T0*
_output_shapes
:g
Qty_Seq/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Qty_Seq/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Qty_Seq/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_slice_1StridedSliceQty_Seq/Shape_1:output:0&Qty_Seq/strided_slice_1/stack:output:0(Qty_Seq/strided_slice_1/stack_1:output:0(Qty_Seq/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#Qty_Seq/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
Qty_Seq/TensorArrayV2TensorListReserve,Qty_Seq/TensorArrayV2/element_shape:output:0 Qty_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=Qty_Seq/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/Qty_Seq/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorQty_Seq/transpose:y:0FQty_Seq/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
Qty_Seq/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
Qty_Seq/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
Qty_Seq/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_slice_2StridedSliceQty_Seq/transpose:y:0&Qty_Seq/strided_slice_2/stack:output:0(Qty_Seq/strided_slice_2/stack_1:output:0(Qty_Seq/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3qty_seq_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Qty_Seq/lstm_cell_17/MatMulMatMul Qty_Seq/strided_slice_2:output:02Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5qty_seq_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
Qty_Seq/lstm_cell_17/MatMul_1MatMulQty_Seq/zeros:output:04Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Qty_Seq/lstm_cell_17/addAddV2%Qty_Seq/lstm_cell_17/MatMul:product:0'Qty_Seq/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4qty_seq_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qty_Seq/lstm_cell_17/BiasAddBiasAddQty_Seq/lstm_cell_17/add:z:03Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$Qty_Seq/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Qty_Seq/lstm_cell_17/splitSplit-Qty_Seq/lstm_cell_17/split/split_dim:output:0%Qty_Seq/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split~
Qty_Seq/lstm_cell_17/SigmoidSigmoid#Qty_Seq/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/Sigmoid_1Sigmoid#Qty_Seq/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/mulMul"Qty_Seq/lstm_cell_17/Sigmoid_1:y:0Qty_Seq/zeros_1:output:0*
T0*'
_output_shapes
:��������� x
Qty_Seq/lstm_cell_17/ReluRelu#Qty_Seq/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/mul_1Mul Qty_Seq/lstm_cell_17/Sigmoid:y:0'Qty_Seq/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/add_1AddV2Qty_Seq/lstm_cell_17/mul:z:0Qty_Seq/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/Sigmoid_2Sigmoid#Qty_Seq/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� u
Qty_Seq/lstm_cell_17/Relu_1ReluQty_Seq/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
Qty_Seq/lstm_cell_17/mul_2Mul"Qty_Seq/lstm_cell_17/Sigmoid_2:y:0)Qty_Seq/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� v
%Qty_Seq/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Qty_Seq/TensorArrayV2_1TensorListReserve.Qty_Seq/TensorArrayV2_1/element_shape:output:0 Qty_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
Qty_Seq/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 Qty_Seq/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
Qty_Seq/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
Qty_Seq/whileWhile#Qty_Seq/while/loop_counter:output:0)Qty_Seq/while/maximum_iterations:output:0Qty_Seq/time:output:0 Qty_Seq/TensorArrayV2_1:handle:0Qty_Seq/zeros:output:0Qty_Seq/zeros_1:output:0 Qty_Seq/strided_slice_1:output:0?Qty_Seq/TensorArrayUnstack/TensorListFromTensor:output_handle:03qty_seq_lstm_cell_17_matmul_readvariableop_resource5qty_seq_lstm_cell_17_matmul_1_readvariableop_resource4qty_seq_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
Qty_Seq_while_body_557736*%
condR
Qty_Seq_while_cond_557735*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
8Qty_Seq/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
*Qty_Seq/TensorArrayV2Stack/TensorListStackTensorListStackQty_Seq/while:output:3AQty_Seq/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0p
Qty_Seq/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
Qty_Seq/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
Qty_Seq/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qty_Seq/strided_slice_3StridedSlice3Qty_Seq/TensorArrayV2Stack/TensorListStack:tensor:0&Qty_Seq/strided_slice_3/stack:output:0(Qty_Seq/strided_slice_3/stack_1:output:0(Qty_Seq/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskm
Qty_Seq/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Qty_Seq/transpose_1	Transpose3Qty_Seq/TensorArrayV2Stack/TensorListStack:tensor:0!Qty_Seq/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� c
Qty_Seq/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    F
Salt_Seq/ShapeShapeinputs_0*
T0*
_output_shapes
:f
Salt_Seq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Salt_Seq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Salt_Seq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_sliceStridedSliceSalt_Seq/Shape:output:0%Salt_Seq/strided_slice/stack:output:0'Salt_Seq/strided_slice/stack_1:output:0'Salt_Seq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Salt_Seq/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Salt_Seq/zeros/packedPackSalt_Seq/strided_slice:output:0 Salt_Seq/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
Salt_Seq/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Salt_Seq/zerosFillSalt_Seq/zeros/packed:output:0Salt_Seq/zeros/Const:output:0*
T0*'
_output_shapes
:��������� [
Salt_Seq/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
Salt_Seq/zeros_1/packedPackSalt_Seq/strided_slice:output:0"Salt_Seq/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
Salt_Seq/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Salt_Seq/zeros_1Fill Salt_Seq/zeros_1/packed:output:0Salt_Seq/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� l
Salt_Seq/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Salt_Seq/transpose	Transposeinputs_0 Salt_Seq/transpose/perm:output:0*
T0*+
_output_shapes
:���������V
Salt_Seq/Shape_1ShapeSalt_Seq/transpose:y:0*
T0*
_output_shapes
:h
Salt_Seq/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 Salt_Seq/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 Salt_Seq/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_slice_1StridedSliceSalt_Seq/Shape_1:output:0'Salt_Seq/strided_slice_1/stack:output:0)Salt_Seq/strided_slice_1/stack_1:output:0)Salt_Seq/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$Salt_Seq/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
Salt_Seq/TensorArrayV2TensorListReserve-Salt_Seq/TensorArrayV2/element_shape:output:0!Salt_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
>Salt_Seq/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
0Salt_Seq/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSalt_Seq/transpose:y:0GSalt_Seq/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���h
Salt_Seq/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 Salt_Seq/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 Salt_Seq/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_slice_2StridedSliceSalt_Seq/transpose:y:0'Salt_Seq/strided_slice_2/stack:output:0)Salt_Seq/strided_slice_2/stack_1:output:0)Salt_Seq/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp4salt_seq_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Salt_Seq/lstm_cell_16/MatMulMatMul!Salt_Seq/strided_slice_2:output:03Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp6salt_seq_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
Salt_Seq/lstm_cell_16/MatMul_1MatMulSalt_Seq/zeros:output:05Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Salt_Seq/lstm_cell_16/addAddV2&Salt_Seq/lstm_cell_16/MatMul:product:0(Salt_Seq/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp5salt_seq_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Salt_Seq/lstm_cell_16/BiasAddBiasAddSalt_Seq/lstm_cell_16/add:z:04Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������g
%Salt_Seq/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Salt_Seq/lstm_cell_16/splitSplit.Salt_Seq/lstm_cell_16/split/split_dim:output:0&Salt_Seq/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
Salt_Seq/lstm_cell_16/SigmoidSigmoid$Salt_Seq/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/Sigmoid_1Sigmoid$Salt_Seq/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/mulMul#Salt_Seq/lstm_cell_16/Sigmoid_1:y:0Salt_Seq/zeros_1:output:0*
T0*'
_output_shapes
:��������� z
Salt_Seq/lstm_cell_16/ReluRelu$Salt_Seq/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/mul_1Mul!Salt_Seq/lstm_cell_16/Sigmoid:y:0(Salt_Seq/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/add_1AddV2Salt_Seq/lstm_cell_16/mul:z:0Salt_Seq/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/Sigmoid_2Sigmoid$Salt_Seq/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� w
Salt_Seq/lstm_cell_16/Relu_1ReluSalt_Seq/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
Salt_Seq/lstm_cell_16/mul_2Mul#Salt_Seq/lstm_cell_16/Sigmoid_2:y:0*Salt_Seq/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� w
&Salt_Seq/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Salt_Seq/TensorArrayV2_1TensorListReserve/Salt_Seq/TensorArrayV2_1/element_shape:output:0!Salt_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���O
Salt_Seq/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!Salt_Seq/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������]
Salt_Seq/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
Salt_Seq/whileWhile$Salt_Seq/while/loop_counter:output:0*Salt_Seq/while/maximum_iterations:output:0Salt_Seq/time:output:0!Salt_Seq/TensorArrayV2_1:handle:0Salt_Seq/zeros:output:0Salt_Seq/zeros_1:output:0!Salt_Seq/strided_slice_1:output:0@Salt_Seq/TensorArrayUnstack/TensorListFromTensor:output_handle:04salt_seq_lstm_cell_16_matmul_readvariableop_resource6salt_seq_lstm_cell_16_matmul_1_readvariableop_resource5salt_seq_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
Salt_Seq_while_body_557875*&
condR
Salt_Seq_while_cond_557874*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
9Salt_Seq/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
+Salt_Seq/TensorArrayV2Stack/TensorListStackTensorListStackSalt_Seq/while:output:3BSalt_Seq/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0q
Salt_Seq/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 Salt_Seq/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 Salt_Seq/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Salt_Seq/strided_slice_3StridedSlice4Salt_Seq/TensorArrayV2Stack/TensorListStack:tensor:0'Salt_Seq/strided_slice_3/stack:output:0)Salt_Seq/strided_slice_3/stack_1:output:0)Salt_Seq/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskn
Salt_Seq/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Salt_Seq/transpose_1	Transpose4Salt_Seq/TensorArrayV2Stack/TensorListStack:tensor:0"Salt_Seq/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� d
Salt_Seq/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
dropout_18/IdentityIdentity!Salt_Seq/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� s
dropout_19/IdentityIdentity Qty_Seq/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� [
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_8/concatConcatV2dropout_18/Identity:output:0dropout_19/Identity:output:0"concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
Connector/MatMul/ReadVariableOpReadVariableOp(connector_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
Connector/MatMulMatMulconcatenate_8/concat:output:0'Connector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 Connector/BiasAdd/ReadVariableOpReadVariableOp)connector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Connector/BiasAddBiasAddConnector/MatMul:product:0(Connector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������m
dropout_20/IdentityIdentityConnector/BiasAdd:output:0*
T0*'
_output_shapes
:����������
Salt_Pred/MatMul/ReadVariableOpReadVariableOp(salt_pred_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
Salt_Pred/MatMulMatMuldropout_20/Identity:output:0'Salt_Pred/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 Salt_Pred/BiasAdd/ReadVariableOpReadVariableOp)salt_pred_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Salt_Pred/BiasAddBiasAddSalt_Pred/MatMul:product:0(Salt_Pred/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������i
IdentityIdentitySalt_Pred/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Connector/BiasAdd/ReadVariableOp ^Connector/MatMul/ReadVariableOp,^Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp+^Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp-^Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp^Qty_Seq/while!^Salt_Pred/BiasAdd/ReadVariableOp ^Salt_Pred/MatMul/ReadVariableOp-^Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp,^Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp.^Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp^Salt_Seq/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2D
 Connector/BiasAdd/ReadVariableOp Connector/BiasAdd/ReadVariableOp2B
Connector/MatMul/ReadVariableOpConnector/MatMul/ReadVariableOp2Z
+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp+Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp2X
*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp*Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp2\
,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp,Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp2
Qty_Seq/whileQty_Seq/while2D
 Salt_Pred/BiasAdd/ReadVariableOp Salt_Pred/BiasAdd/ReadVariableOp2B
Salt_Pred/MatMul/ReadVariableOpSalt_Pred/MatMul/ReadVariableOp2\
,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp,Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp2Z
+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp+Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp2^
-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp-Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp2 
Salt_Seq/whileSalt_Seq/while:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/1
�
�
while_cond_559472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559472___redundant_placeholder04
0while_while_cond_559472___redundant_placeholder14
0while_while_cond_559472___redundant_placeholder24
0while_while_cond_559472___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_557182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557182___redundant_placeholder04
0while_while_cond_557182___redundant_placeholder14
0while_while_cond_557182___redundant_placeholder24
0while_while_cond_557182___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�J
�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_556921

inputs>
+lstm_cell_16_matmul_readvariableop_resource:	�@
-lstm_cell_16_matmul_1_readvariableop_resource:	 �;
,lstm_cell_16_biasadd_readvariableop_resource:	�
identity��#lstm_cell_16/BiasAdd/ReadVariableOp�"lstm_cell_16/MatMul/ReadVariableOp�$lstm_cell_16/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_16/MatMul/ReadVariableOpReadVariableOp+lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_16/MatMulMatMulstrided_slice_2:output:0*lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_16/MatMul_1MatMulzeros:output:0,lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_16/addAddV2lstm_cell_16/MatMul:product:0lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_16/BiasAddBiasAddlstm_cell_16/add:z:0+lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_16/splitSplit%lstm_cell_16/split/split_dim:output:0lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_16/SigmoidSigmoidlstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_1Sigmoidlstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_16/mulMullstm_cell_16/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_16/ReluRelulstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_1Mullstm_cell_16/Sigmoid:y:0lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_16/add_1AddV2lstm_cell_16/mul:z:0lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_16/Sigmoid_2Sigmoidlstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_16/Relu_1Relulstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_16/mul_2Mullstm_cell_16/Sigmoid_2:y:0!lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_16_matmul_readvariableop_resource-lstm_cell_16_matmul_1_readvariableop_resource,lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_556837*
condR
while_cond_556836*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_16/BiasAdd/ReadVariableOp#^lstm_cell_16/MatMul/ReadVariableOp%^lstm_cell_16/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_16/BiasAdd/ReadVariableOp#lstm_cell_16/BiasAdd/ReadVariableOp2H
"lstm_cell_16/MatMul/ReadVariableOp"lstm_cell_16/MatMul/ReadVariableOp2L
$lstm_cell_16/MatMul_1/ReadVariableOp$lstm_cell_16/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_558857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	�F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_16_biasadd_readvariableop_resource:	���)while/lstm_cell_16/BiasAdd/ReadVariableOp�(while/lstm_cell_16/MatMul/ReadVariableOp�*while/lstm_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_557183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	�F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_16_biasadd_readvariableop_resource:	���)while/lstm_cell_16/BiasAdd/ReadVariableOp�(while/lstm_cell_16/MatMul/ReadVariableOp�*while/lstm_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
d
+__inference_dropout_18_layer_call_fn_559567

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_557108o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�"
�
while_body_556542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_17_556566_0:	�.
while_lstm_cell_17_556568_0:	 �*
while_lstm_cell_17_556570_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_17_556566:	�,
while_lstm_cell_17_556568:	 �(
while_lstm_cell_17_556570:	���*while/lstm_cell_17/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_17_556566_0while_lstm_cell_17_556568_0while_lstm_cell_17_556570_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556483�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_17/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_17/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity3while/lstm_cell_17/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� y

while/NoOpNoOp+^while/lstm_cell_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_17_556566while_lstm_cell_17_556566_0"8
while_lstm_cell_17_556568while_lstm_cell_17_556568_0"8
while_lstm_cell_17_556570while_lstm_cell_17_556570_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_17/StatefulPartitionedCall*while/lstm_cell_17/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
d
F__inference_dropout_18_layer_call_and_return_conditional_losses_559572

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_Salt_Pred_layer_call_fn_559679

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_556985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_Qty_Seq_layer_call_fn_558974

inputs
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_556837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	�F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_16_biasadd_readvariableop_resource:	���)while/lstm_cell_16/BiasAdd/ReadVariableOp�(while/lstm_cell_16/MatMul/ReadVariableOp�*while/lstm_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�	
e
F__inference_dropout_19_layer_call_and_return_conditional_losses_559611

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�

!__inference__wrapped_model_555920
	salt_data
quantity_dataN
;model_8_qty_seq_lstm_cell_17_matmul_readvariableop_resource:	�P
=model_8_qty_seq_lstm_cell_17_matmul_1_readvariableop_resource:	 �K
<model_8_qty_seq_lstm_cell_17_biasadd_readvariableop_resource:	�O
<model_8_salt_seq_lstm_cell_16_matmul_readvariableop_resource:	�Q
>model_8_salt_seq_lstm_cell_16_matmul_1_readvariableop_resource:	 �L
=model_8_salt_seq_lstm_cell_16_biasadd_readvariableop_resource:	�B
0model_8_connector_matmul_readvariableop_resource:@?
1model_8_connector_biasadd_readvariableop_resource:B
0model_8_salt_pred_matmul_readvariableop_resource:?
1model_8_salt_pred_biasadd_readvariableop_resource:
identity��(model_8/Connector/BiasAdd/ReadVariableOp�'model_8/Connector/MatMul/ReadVariableOp�3model_8/Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp�2model_8/Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp�4model_8/Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp�model_8/Qty_Seq/while�(model_8/Salt_Pred/BiasAdd/ReadVariableOp�'model_8/Salt_Pred/MatMul/ReadVariableOp�4model_8/Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp�3model_8/Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp�5model_8/Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp�model_8/Salt_Seq/whileR
model_8/Qty_Seq/ShapeShapequantity_data*
T0*
_output_shapes
:m
#model_8/Qty_Seq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%model_8/Qty_Seq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%model_8/Qty_Seq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_8/Qty_Seq/strided_sliceStridedSlicemodel_8/Qty_Seq/Shape:output:0,model_8/Qty_Seq/strided_slice/stack:output:0.model_8/Qty_Seq/strided_slice/stack_1:output:0.model_8/Qty_Seq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model_8/Qty_Seq/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
model_8/Qty_Seq/zeros/packedPack&model_8/Qty_Seq/strided_slice:output:0'model_8/Qty_Seq/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
model_8/Qty_Seq/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_8/Qty_Seq/zerosFill%model_8/Qty_Seq/zeros/packed:output:0$model_8/Qty_Seq/zeros/Const:output:0*
T0*'
_output_shapes
:��������� b
 model_8/Qty_Seq/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
model_8/Qty_Seq/zeros_1/packedPack&model_8/Qty_Seq/strided_slice:output:0)model_8/Qty_Seq/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
model_8/Qty_Seq/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_8/Qty_Seq/zeros_1Fill'model_8/Qty_Seq/zeros_1/packed:output:0&model_8/Qty_Seq/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� s
model_8/Qty_Seq/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_8/Qty_Seq/transpose	Transposequantity_data'model_8/Qty_Seq/transpose/perm:output:0*
T0*+
_output_shapes
:���������d
model_8/Qty_Seq/Shape_1Shapemodel_8/Qty_Seq/transpose:y:0*
T0*
_output_shapes
:o
%model_8/Qty_Seq/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_8/Qty_Seq/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_8/Qty_Seq/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_8/Qty_Seq/strided_slice_1StridedSlice model_8/Qty_Seq/Shape_1:output:0.model_8/Qty_Seq/strided_slice_1/stack:output:00model_8/Qty_Seq/strided_slice_1/stack_1:output:00model_8/Qty_Seq/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+model_8/Qty_Seq/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_8/Qty_Seq/TensorArrayV2TensorListReserve4model_8/Qty_Seq/TensorArrayV2/element_shape:output:0(model_8/Qty_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Emodel_8/Qty_Seq/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7model_8/Qty_Seq/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_8/Qty_Seq/transpose:y:0Nmodel_8/Qty_Seq/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%model_8/Qty_Seq/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_8/Qty_Seq/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_8/Qty_Seq/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_8/Qty_Seq/strided_slice_2StridedSlicemodel_8/Qty_Seq/transpose:y:0.model_8/Qty_Seq/strided_slice_2/stack:output:00model_8/Qty_Seq/strided_slice_2/stack_1:output:00model_8/Qty_Seq/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
2model_8/Qty_Seq/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp;model_8_qty_seq_lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#model_8/Qty_Seq/lstm_cell_17/MatMulMatMul(model_8/Qty_Seq/strided_slice_2:output:0:model_8/Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
4model_8/Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp=model_8_qty_seq_lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
%model_8/Qty_Seq/lstm_cell_17/MatMul_1MatMulmodel_8/Qty_Seq/zeros:output:0<model_8/Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
 model_8/Qty_Seq/lstm_cell_17/addAddV2-model_8/Qty_Seq/lstm_cell_17/MatMul:product:0/model_8/Qty_Seq/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
3model_8/Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp<model_8_qty_seq_lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$model_8/Qty_Seq/lstm_cell_17/BiasAddBiasAdd$model_8/Qty_Seq/lstm_cell_17/add:z:0;model_8/Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
,model_8/Qty_Seq/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
"model_8/Qty_Seq/lstm_cell_17/splitSplit5model_8/Qty_Seq/lstm_cell_17/split/split_dim:output:0-model_8/Qty_Seq/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
$model_8/Qty_Seq/lstm_cell_17/SigmoidSigmoid+model_8/Qty_Seq/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� �
&model_8/Qty_Seq/lstm_cell_17/Sigmoid_1Sigmoid+model_8/Qty_Seq/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
 model_8/Qty_Seq/lstm_cell_17/mulMul*model_8/Qty_Seq/lstm_cell_17/Sigmoid_1:y:0 model_8/Qty_Seq/zeros_1:output:0*
T0*'
_output_shapes
:��������� �
!model_8/Qty_Seq/lstm_cell_17/ReluRelu+model_8/Qty_Seq/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
"model_8/Qty_Seq/lstm_cell_17/mul_1Mul(model_8/Qty_Seq/lstm_cell_17/Sigmoid:y:0/model_8/Qty_Seq/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
"model_8/Qty_Seq/lstm_cell_17/add_1AddV2$model_8/Qty_Seq/lstm_cell_17/mul:z:0&model_8/Qty_Seq/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� �
&model_8/Qty_Seq/lstm_cell_17/Sigmoid_2Sigmoid+model_8/Qty_Seq/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� �
#model_8/Qty_Seq/lstm_cell_17/Relu_1Relu&model_8/Qty_Seq/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
"model_8/Qty_Seq/lstm_cell_17/mul_2Mul*model_8/Qty_Seq/lstm_cell_17/Sigmoid_2:y:01model_8/Qty_Seq/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� ~
-model_8/Qty_Seq/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
model_8/Qty_Seq/TensorArrayV2_1TensorListReserve6model_8/Qty_Seq/TensorArrayV2_1/element_shape:output:0(model_8/Qty_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
model_8/Qty_Seq/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(model_8/Qty_Seq/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"model_8/Qty_Seq/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model_8/Qty_Seq/whileWhile+model_8/Qty_Seq/while/loop_counter:output:01model_8/Qty_Seq/while/maximum_iterations:output:0model_8/Qty_Seq/time:output:0(model_8/Qty_Seq/TensorArrayV2_1:handle:0model_8/Qty_Seq/zeros:output:0 model_8/Qty_Seq/zeros_1:output:0(model_8/Qty_Seq/strided_slice_1:output:0Gmodel_8/Qty_Seq/TensorArrayUnstack/TensorListFromTensor:output_handle:0;model_8_qty_seq_lstm_cell_17_matmul_readvariableop_resource=model_8_qty_seq_lstm_cell_17_matmul_1_readvariableop_resource<model_8_qty_seq_lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!model_8_Qty_Seq_while_body_555680*-
cond%R#
!model_8_Qty_Seq_while_cond_555679*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
@model_8/Qty_Seq/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
2model_8/Qty_Seq/TensorArrayV2Stack/TensorListStackTensorListStackmodel_8/Qty_Seq/while:output:3Imodel_8/Qty_Seq/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0x
%model_8/Qty_Seq/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'model_8/Qty_Seq/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'model_8/Qty_Seq/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_8/Qty_Seq/strided_slice_3StridedSlice;model_8/Qty_Seq/TensorArrayV2Stack/TensorListStack:tensor:0.model_8/Qty_Seq/strided_slice_3/stack:output:00model_8/Qty_Seq/strided_slice_3/stack_1:output:00model_8/Qty_Seq/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_masku
 model_8/Qty_Seq/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_8/Qty_Seq/transpose_1	Transpose;model_8/Qty_Seq/TensorArrayV2Stack/TensorListStack:tensor:0)model_8/Qty_Seq/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� k
model_8/Qty_Seq/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    O
model_8/Salt_Seq/ShapeShape	salt_data*
T0*
_output_shapes
:n
$model_8/Salt_Seq/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_8/Salt_Seq/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_8/Salt_Seq/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_8/Salt_Seq/strided_sliceStridedSlicemodel_8/Salt_Seq/Shape:output:0-model_8/Salt_Seq/strided_slice/stack:output:0/model_8/Salt_Seq/strided_slice/stack_1:output:0/model_8/Salt_Seq/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_8/Salt_Seq/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
model_8/Salt_Seq/zeros/packedPack'model_8/Salt_Seq/strided_slice:output:0(model_8/Salt_Seq/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
model_8/Salt_Seq/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_8/Salt_Seq/zerosFill&model_8/Salt_Seq/zeros/packed:output:0%model_8/Salt_Seq/zeros/Const:output:0*
T0*'
_output_shapes
:��������� c
!model_8/Salt_Seq/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
model_8/Salt_Seq/zeros_1/packedPack'model_8/Salt_Seq/strided_slice:output:0*model_8/Salt_Seq/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
model_8/Salt_Seq/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_8/Salt_Seq/zeros_1Fill(model_8/Salt_Seq/zeros_1/packed:output:0'model_8/Salt_Seq/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� t
model_8/Salt_Seq/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_8/Salt_Seq/transpose	Transpose	salt_data(model_8/Salt_Seq/transpose/perm:output:0*
T0*+
_output_shapes
:���������f
model_8/Salt_Seq/Shape_1Shapemodel_8/Salt_Seq/transpose:y:0*
T0*
_output_shapes
:p
&model_8/Salt_Seq/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_8/Salt_Seq/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_8/Salt_Seq/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_8/Salt_Seq/strided_slice_1StridedSlice!model_8/Salt_Seq/Shape_1:output:0/model_8/Salt_Seq/strided_slice_1/stack:output:01model_8/Salt_Seq/strided_slice_1/stack_1:output:01model_8/Salt_Seq/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,model_8/Salt_Seq/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_8/Salt_Seq/TensorArrayV2TensorListReserve5model_8/Salt_Seq/TensorArrayV2/element_shape:output:0)model_8/Salt_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Fmodel_8/Salt_Seq/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8model_8/Salt_Seq/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_8/Salt_Seq/transpose:y:0Omodel_8/Salt_Seq/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&model_8/Salt_Seq/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_8/Salt_Seq/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_8/Salt_Seq/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_8/Salt_Seq/strided_slice_2StridedSlicemodel_8/Salt_Seq/transpose:y:0/model_8/Salt_Seq/strided_slice_2/stack:output:01model_8/Salt_Seq/strided_slice_2/stack_1:output:01model_8/Salt_Seq/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
3model_8/Salt_Seq/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp<model_8_salt_seq_lstm_cell_16_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$model_8/Salt_Seq/lstm_cell_16/MatMulMatMul)model_8/Salt_Seq/strided_slice_2:output:0;model_8/Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5model_8/Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp>model_8_salt_seq_lstm_cell_16_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
&model_8/Salt_Seq/lstm_cell_16/MatMul_1MatMulmodel_8/Salt_Seq/zeros:output:0=model_8/Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!model_8/Salt_Seq/lstm_cell_16/addAddV2.model_8/Salt_Seq/lstm_cell_16/MatMul:product:00model_8/Salt_Seq/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
4model_8/Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp=model_8_salt_seq_lstm_cell_16_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%model_8/Salt_Seq/lstm_cell_16/BiasAddBiasAdd%model_8/Salt_Seq/lstm_cell_16/add:z:0<model_8/Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
-model_8/Salt_Seq/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
#model_8/Salt_Seq/lstm_cell_16/splitSplit6model_8/Salt_Seq/lstm_cell_16/split/split_dim:output:0.model_8/Salt_Seq/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
%model_8/Salt_Seq/lstm_cell_16/SigmoidSigmoid,model_8/Salt_Seq/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� �
'model_8/Salt_Seq/lstm_cell_16/Sigmoid_1Sigmoid,model_8/Salt_Seq/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
!model_8/Salt_Seq/lstm_cell_16/mulMul+model_8/Salt_Seq/lstm_cell_16/Sigmoid_1:y:0!model_8/Salt_Seq/zeros_1:output:0*
T0*'
_output_shapes
:��������� �
"model_8/Salt_Seq/lstm_cell_16/ReluRelu,model_8/Salt_Seq/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
#model_8/Salt_Seq/lstm_cell_16/mul_1Mul)model_8/Salt_Seq/lstm_cell_16/Sigmoid:y:00model_8/Salt_Seq/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
#model_8/Salt_Seq/lstm_cell_16/add_1AddV2%model_8/Salt_Seq/lstm_cell_16/mul:z:0'model_8/Salt_Seq/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� �
'model_8/Salt_Seq/lstm_cell_16/Sigmoid_2Sigmoid,model_8/Salt_Seq/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� �
$model_8/Salt_Seq/lstm_cell_16/Relu_1Relu'model_8/Salt_Seq/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
#model_8/Salt_Seq/lstm_cell_16/mul_2Mul+model_8/Salt_Seq/lstm_cell_16/Sigmoid_2:y:02model_8/Salt_Seq/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� 
.model_8/Salt_Seq/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
 model_8/Salt_Seq/TensorArrayV2_1TensorListReserve7model_8/Salt_Seq/TensorArrayV2_1/element_shape:output:0)model_8/Salt_Seq/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
model_8/Salt_Seq/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)model_8/Salt_Seq/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#model_8/Salt_Seq/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model_8/Salt_Seq/whileWhile,model_8/Salt_Seq/while/loop_counter:output:02model_8/Salt_Seq/while/maximum_iterations:output:0model_8/Salt_Seq/time:output:0)model_8/Salt_Seq/TensorArrayV2_1:handle:0model_8/Salt_Seq/zeros:output:0!model_8/Salt_Seq/zeros_1:output:0)model_8/Salt_Seq/strided_slice_1:output:0Hmodel_8/Salt_Seq/TensorArrayUnstack/TensorListFromTensor:output_handle:0<model_8_salt_seq_lstm_cell_16_matmul_readvariableop_resource>model_8_salt_seq_lstm_cell_16_matmul_1_readvariableop_resource=model_8_salt_seq_lstm_cell_16_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"model_8_Salt_Seq_while_body_555819*.
cond&R$
"model_8_Salt_Seq_while_cond_555818*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
Amodel_8/Salt_Seq/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
3model_8/Salt_Seq/TensorArrayV2Stack/TensorListStackTensorListStackmodel_8/Salt_Seq/while:output:3Jmodel_8/Salt_Seq/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0y
&model_8/Salt_Seq/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(model_8/Salt_Seq/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(model_8/Salt_Seq/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_8/Salt_Seq/strided_slice_3StridedSlice<model_8/Salt_Seq/TensorArrayV2Stack/TensorListStack:tensor:0/model_8/Salt_Seq/strided_slice_3/stack:output:01model_8/Salt_Seq/strided_slice_3/stack_1:output:01model_8/Salt_Seq/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskv
!model_8/Salt_Seq/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_8/Salt_Seq/transpose_1	Transpose<model_8/Salt_Seq/TensorArrayV2Stack/TensorListStack:tensor:0*model_8/Salt_Seq/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� l
model_8/Salt_Seq/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
model_8/dropout_18/IdentityIdentity)model_8/Salt_Seq/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� �
model_8/dropout_19/IdentityIdentity(model_8/Qty_Seq/strided_slice_3:output:0*
T0*'
_output_shapes
:��������� c
!model_8/concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_8/concatenate_8/concatConcatV2$model_8/dropout_18/Identity:output:0$model_8/dropout_19/Identity:output:0*model_8/concatenate_8/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������@�
'model_8/Connector/MatMul/ReadVariableOpReadVariableOp0model_8_connector_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model_8/Connector/MatMulMatMul%model_8/concatenate_8/concat:output:0/model_8/Connector/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_8/Connector/BiasAdd/ReadVariableOpReadVariableOp1model_8_connector_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_8/Connector/BiasAddBiasAdd"model_8/Connector/MatMul:product:00model_8/Connector/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������}
model_8/dropout_20/IdentityIdentity"model_8/Connector/BiasAdd:output:0*
T0*'
_output_shapes
:����������
'model_8/Salt_Pred/MatMul/ReadVariableOpReadVariableOp0model_8_salt_pred_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model_8/Salt_Pred/MatMulMatMul$model_8/dropout_20/Identity:output:0/model_8/Salt_Pred/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_8/Salt_Pred/BiasAdd/ReadVariableOpReadVariableOp1model_8_salt_pred_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_8/Salt_Pred/BiasAddBiasAdd"model_8/Salt_Pred/MatMul:product:00model_8/Salt_Pred/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"model_8/Salt_Pred/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^model_8/Connector/BiasAdd/ReadVariableOp(^model_8/Connector/MatMul/ReadVariableOp4^model_8/Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp3^model_8/Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp5^model_8/Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp^model_8/Qty_Seq/while)^model_8/Salt_Pred/BiasAdd/ReadVariableOp(^model_8/Salt_Pred/MatMul/ReadVariableOp5^model_8/Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp4^model_8/Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp6^model_8/Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp^model_8/Salt_Seq/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2T
(model_8/Connector/BiasAdd/ReadVariableOp(model_8/Connector/BiasAdd/ReadVariableOp2R
'model_8/Connector/MatMul/ReadVariableOp'model_8/Connector/MatMul/ReadVariableOp2j
3model_8/Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp3model_8/Qty_Seq/lstm_cell_17/BiasAdd/ReadVariableOp2h
2model_8/Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp2model_8/Qty_Seq/lstm_cell_17/MatMul/ReadVariableOp2l
4model_8/Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp4model_8/Qty_Seq/lstm_cell_17/MatMul_1/ReadVariableOp2.
model_8/Qty_Seq/whilemodel_8/Qty_Seq/while2T
(model_8/Salt_Pred/BiasAdd/ReadVariableOp(model_8/Salt_Pred/BiasAdd/ReadVariableOp2R
'model_8/Salt_Pred/MatMul/ReadVariableOp'model_8/Salt_Pred/MatMul/ReadVariableOp2l
4model_8/Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp4model_8/Salt_Seq/lstm_cell_16/BiasAdd/ReadVariableOp2j
3model_8/Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp3model_8/Salt_Seq/lstm_cell_16/MatMul/ReadVariableOp2n
5model_8/Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp5model_8/Salt_Seq/lstm_cell_16/MatMul_1/ReadVariableOp20
model_8/Salt_Seq/whilemodel_8/Salt_Seq/while:V R
+
_output_shapes
:���������
#
_user_specified_name	Salt_Data:ZV
+
_output_shapes
:���������
'
_user_specified_nameQuantity_Data
�
�
!model_8_Qty_Seq_while_cond_555679<
8model_8_qty_seq_while_model_8_qty_seq_while_loop_counterB
>model_8_qty_seq_while_model_8_qty_seq_while_maximum_iterations%
!model_8_qty_seq_while_placeholder'
#model_8_qty_seq_while_placeholder_1'
#model_8_qty_seq_while_placeholder_2'
#model_8_qty_seq_while_placeholder_3>
:model_8_qty_seq_while_less_model_8_qty_seq_strided_slice_1T
Pmodel_8_qty_seq_while_model_8_qty_seq_while_cond_555679___redundant_placeholder0T
Pmodel_8_qty_seq_while_model_8_qty_seq_while_cond_555679___redundant_placeholder1T
Pmodel_8_qty_seq_while_model_8_qty_seq_while_cond_555679___redundant_placeholder2T
Pmodel_8_qty_seq_while_model_8_qty_seq_while_cond_555679___redundant_placeholder3"
model_8_qty_seq_while_identity
�
model_8/Qty_Seq/while/LessLess!model_8_qty_seq_while_placeholder:model_8_qty_seq_while_less_model_8_qty_seq_strided_slice_1*
T0*
_output_shapes
: k
model_8/Qty_Seq/while/IdentityIdentitymodel_8/Qty_Seq/while/Less:z:0*
T0
*
_output_shapes
: "I
model_8_qty_seq_while_identity'model_8/Qty_Seq/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�

�
Salt_Seq_while_cond_558174.
*salt_seq_while_salt_seq_while_loop_counter4
0salt_seq_while_salt_seq_while_maximum_iterations
salt_seq_while_placeholder 
salt_seq_while_placeholder_1 
salt_seq_while_placeholder_2 
salt_seq_while_placeholder_30
,salt_seq_while_less_salt_seq_strided_slice_1F
Bsalt_seq_while_salt_seq_while_cond_558174___redundant_placeholder0F
Bsalt_seq_while_salt_seq_while_cond_558174___redundant_placeholder1F
Bsalt_seq_while_salt_seq_while_cond_558174___redundant_placeholder2F
Bsalt_seq_while_salt_seq_while_cond_558174___redundant_placeholder3
salt_seq_while_identity
�
Salt_Seq/while/LessLesssalt_seq_while_placeholder,salt_seq_while_less_salt_seq_strided_slice_1*
T0*
_output_shapes
: ]
Salt_Seq/while/IdentityIdentitySalt_Seq/while/Less:z:0*
T0
*
_output_shapes
: ";
salt_seq_while_identity Salt_Seq/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
while_cond_556836
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_556836___redundant_placeholder04
0while_while_cond_556836___redundant_placeholder14
0while_while_cond_556836___redundant_placeholder24
0while_while_cond_556836___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
(__inference_model_8_layer_call_fn_557552
	salt_data
quantity_data
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	�
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	salt_dataquantity_dataunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_557503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
+
_output_shapes
:���������
#
_user_specified_name	Salt_Data:ZV
+
_output_shapes
:���������
'
_user_specified_nameQuantity_Data
�"
�
while_body_556192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_16_556216_0:	�.
while_lstm_cell_16_556218_0:	 �*
while_lstm_cell_16_556220_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_16_556216:	�,
while_lstm_cell_16_556218:	 �(
while_lstm_cell_16_556220:	���*while/lstm_cell_16/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_16/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_16_556216_0while_lstm_cell_16_556218_0while_lstm_cell_16_556220_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_556133�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_16/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_16/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity3while/lstm_cell_16/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� y

while/NoOpNoOp+^while/lstm_cell_16/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_16_556216while_lstm_cell_16_556216_0"8
while_lstm_cell_16_556218while_lstm_cell_16_556218_0"8
while_lstm_cell_16_556220while_lstm_cell_16_556220_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2X
*while/lstm_cell_16/StatefulPartitionedCall*while/lstm_cell_16/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�(
�
C__inference_model_8_layer_call_and_return_conditional_losses_557618
	salt_data
quantity_data!
qty_seq_557589:	�!
qty_seq_557591:	 �
qty_seq_557593:	�"
salt_seq_557596:	�"
salt_seq_557598:	 �
salt_seq_557600:	�"
connector_557606:@
connector_557608:"
salt_pred_557612:
salt_pred_557614:
identity��!Connector/StatefulPartitionedCall�Qty_Seq/StatefulPartitionedCall�!Salt_Pred/StatefulPartitionedCall� Salt_Seq/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�"dropout_20/StatefulPartitionedCall�
Qty_Seq/StatefulPartitionedCallStatefulPartitionedCallquantity_dataqty_seq_557589qty_seq_557591qty_seq_557593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_557432�
 Salt_Seq/StatefulPartitionedCallStatefulPartitionedCall	salt_datasalt_seq_557596salt_seq_557598salt_seq_557600*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_557267�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall)Salt_Seq/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_557108�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall(Qty_Seq/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_557085�
concatenate_8/PartitionedCallPartitionedCall+dropout_18/StatefulPartitionedCall:output:0+dropout_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_concatenate_8_layer_call_and_return_conditional_losses_556950�
!Connector/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0connector_557606connector_557608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Connector_layer_call_and_return_conditional_losses_556962�
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall*Connector/StatefulPartitionedCall:output:0#^dropout_19/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_557045�
!Salt_Pred/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0salt_pred_557612salt_pred_557614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_556985y
IdentityIdentity*Salt_Pred/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^Connector/StatefulPartitionedCall ^Qty_Seq/StatefulPartitionedCall"^Salt_Pred/StatefulPartitionedCall!^Salt_Seq/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 2F
!Connector/StatefulPartitionedCall!Connector/StatefulPartitionedCall2B
Qty_Seq/StatefulPartitionedCallQty_Seq/StatefulPartitionedCall2F
!Salt_Pred/StatefulPartitionedCall!Salt_Pred/StatefulPartitionedCall2D
 Salt_Seq/StatefulPartitionedCall Salt_Seq/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall:V R
+
_output_shapes
:���������
#
_user_specified_name	Salt_Data:ZV
+
_output_shapes
:���������
'
_user_specified_nameQuantity_Data
�
�
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_559853

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�J
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559128
inputs_0>
+lstm_cell_17_matmul_readvariableop_resource:	�@
-lstm_cell_17_matmul_1_readvariableop_resource:	 �;
,lstm_cell_17_biasadd_readvariableop_resource:	�
identity��#lstm_cell_17/BiasAdd/ReadVariableOp�"lstm_cell_17/MatMul/ReadVariableOp�$lstm_cell_17/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_559044*
condR
while_cond_559043*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_555987

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
G
+__inference_dropout_19_layer_call_fn_559589

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_19_layer_call_and_return_conditional_losses_556941`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_559043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559043___redundant_placeholder04
0while_while_cond_559043___redundant_placeholder14
0while_while_cond_559043___redundant_placeholder24
0while_while_cond_559043___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�J
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556771

inputs>
+lstm_cell_17_matmul_readvariableop_resource:	�@
-lstm_cell_17_matmul_1_readvariableop_resource:	 �;
,lstm_cell_17_biasadd_readvariableop_resource:	�
identity��#lstm_cell_17/BiasAdd/ReadVariableOp�"lstm_cell_17/MatMul/ReadVariableOp�$lstm_cell_17/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_556687*
condR
while_cond_556686*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_556686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_556686___redundant_placeholder04
0while_while_cond_556686___redundant_placeholder14
0while_while_cond_556686___redundant_placeholder24
0while_while_cond_556686___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
d
F__inference_dropout_19_layer_call_and_return_conditional_losses_559599

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
(__inference_Qty_Seq_layer_call_fn_558963
inputs_0
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
-__inference_lstm_cell_17_layer_call_fn_559804

inputs
states_0
states_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�8
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_556420

inputs&
lstm_cell_17_556338:	�&
lstm_cell_17_556340:	 �"
lstm_cell_17_556342:	�
identity��$lstm_cell_17/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_17/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_17_556338lstm_cell_17_556340lstm_cell_17_556342*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_556337n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_17_556338lstm_cell_17_556340lstm_cell_17_556342*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_556351*
condR
while_cond_556350*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� u
NoOpNoOp%^lstm_cell_17/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_17/StatefulPartitionedCall$lstm_cell_17/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_16_layer_call_fn_559723

inputs
states_0
states_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_556133o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�	
e
F__inference_dropout_20_layer_call_and_return_conditional_losses_557045

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_model_8_layer_call_fn_557676
inputs_0
inputs_1
unknown:	�
	unknown_0:	 �
	unknown_1:	�
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	�
	unknown_5:@
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_557503o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:���������:���������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:���������
"
_user_specified_name
inputs/1
�J
�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559271
inputs_0>
+lstm_cell_17_matmul_readvariableop_resource:	�@
-lstm_cell_17_matmul_1_readvariableop_resource:	 �;
,lstm_cell_17_biasadd_readvariableop_resource:	�
identity��#lstm_cell_17/BiasAdd/ReadVariableOp�"lstm_cell_17/MatMul/ReadVariableOp�$lstm_cell_17/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_17/MatMul/ReadVariableOpReadVariableOp+lstm_cell_17_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_17/MatMulMatMulstrided_slice_2:output:0*lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_17_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_17/MatMul_1MatMulzeros:output:0,lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_17/addAddV2lstm_cell_17/MatMul:product:0lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_17_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_17/BiasAddBiasAddlstm_cell_17/add:z:0+lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_17/splitSplit%lstm_cell_17/split/split_dim:output:0lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitn
lstm_cell_17/SigmoidSigmoidlstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_1Sigmoidlstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_17/mulMullstm_cell_17/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� h
lstm_cell_17/ReluRelulstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_1Mullstm_cell_17/Sigmoid:y:0lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� {
lstm_cell_17/add_1AddV2lstm_cell_17/mul:z:0lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� p
lstm_cell_17/Sigmoid_2Sigmoidlstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� e
lstm_cell_17/Relu_1Relulstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_17/mul_2Mullstm_cell_17/Sigmoid_2:y:0!lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_17_matmul_readvariableop_resource-lstm_cell_17_matmul_1_readvariableop_resource,lstm_cell_17_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_559187*
condR
while_cond_559186*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp$^lstm_cell_17/BiasAdd/ReadVariableOp#^lstm_cell_17/MatMul/ReadVariableOp%^lstm_cell_17/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_17/BiasAdd/ReadVariableOp#lstm_cell_17/BiasAdd/ReadVariableOp2H
"lstm_cell_17/MatMul/ReadVariableOp"lstm_cell_17/MatMul/ReadVariableOp2L
$lstm_cell_17/MatMul_1/ReadVariableOp$lstm_cell_17/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
d
F__inference_dropout_18_layer_call_and_return_conditional_losses_556934

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�8
�
while_body_557348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	�F
3while_lstm_cell_17_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_17_biasadd_readvariableop_resource:	���)while/lstm_cell_17/BiasAdd/ReadVariableOp�(while/lstm_cell_17/MatMul/ReadVariableOp�*while/lstm_cell_17/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_558427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558427___redundant_placeholder04
0while_while_cond_558427___redundant_placeholder14
0while_while_cond_558427___redundant_placeholder24
0while_while_cond_558427___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�8
�
while_body_559473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_17_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_17_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_17_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_17_matmul_readvariableop_resource:	�F
3while_lstm_cell_17_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_17_biasadd_readvariableop_resource:	���)while/lstm_cell_17/BiasAdd/ReadVariableOp�(while/lstm_cell_17/MatMul/ReadVariableOp�*while/lstm_cell_17/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_17/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_17_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_17/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_17/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_17/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_17_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_17/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_17/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_17/addAddV2#while/lstm_cell_17/MatMul:product:0%while/lstm_cell_17/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_17/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_17_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_17/BiasAddBiasAddwhile/lstm_cell_17/add:z:01while/lstm_cell_17/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_17/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_17/splitSplit+while/lstm_cell_17/split/split_dim:output:0#while/lstm_cell_17/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_17/SigmoidSigmoid!while/lstm_cell_17/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_1Sigmoid!while/lstm_cell_17/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mulMul while/lstm_cell_17/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_17/ReluRelu!while/lstm_cell_17/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_1Mulwhile/lstm_cell_17/Sigmoid:y:0%while/lstm_cell_17/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/add_1AddV2while/lstm_cell_17/mul:z:0while/lstm_cell_17/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_17/Sigmoid_2Sigmoid!while/lstm_cell_17/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_17/Relu_1Reluwhile/lstm_cell_17/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_17/mul_2Mul while/lstm_cell_17/Sigmoid_2:y:0'while/lstm_cell_17/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_17/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_17/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_17/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_17/BiasAdd/ReadVariableOp)^while/lstm_cell_17/MatMul/ReadVariableOp+^while/lstm_cell_17/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_17_biasadd_readvariableop_resource4while_lstm_cell_17_biasadd_readvariableop_resource_0"l
3while_lstm_cell_17_matmul_1_readvariableop_resource5while_lstm_cell_17_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_17_matmul_readvariableop_resource3while_lstm_cell_17_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_17/BiasAdd/ReadVariableOp)while/lstm_cell_17/BiasAdd/ReadVariableOp2T
(while/lstm_cell_17/MatMul/ReadVariableOp(while/lstm_cell_17/MatMul/ReadVariableOp2X
*while/lstm_cell_17/MatMul_1/ReadVariableOp*while/lstm_cell_17/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_558570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558570___redundant_placeholder04
0while_while_cond_558570___redundant_placeholder14
0while_while_cond_558570___redundant_placeholder24
0while_while_cond_558570___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_556973

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_558571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_16_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_16_matmul_1_readvariableop_resource_0:	 �C
4while_lstm_cell_16_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_16_matmul_readvariableop_resource:	�F
3while_lstm_cell_16_matmul_1_readvariableop_resource:	 �A
2while_lstm_cell_16_biasadd_readvariableop_resource:	���)while/lstm_cell_16/BiasAdd/ReadVariableOp�(while/lstm_cell_16/MatMul/ReadVariableOp�*while/lstm_cell_16/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_16/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_16_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_16/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_16/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_16_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_16/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_16/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_16/addAddV2#while/lstm_cell_16/MatMul:product:0%while/lstm_cell_16/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_16/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_16_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_16/BiasAddBiasAddwhile/lstm_cell_16/add:z:01while/lstm_cell_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_16/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_16/splitSplit+while/lstm_cell_16/split/split_dim:output:0#while/lstm_cell_16/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitz
while/lstm_cell_16/SigmoidSigmoid!while/lstm_cell_16/split:output:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_1Sigmoid!while/lstm_cell_16/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mulMul while/lstm_cell_16/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� t
while/lstm_cell_16/ReluRelu!while/lstm_cell_16/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_1Mulwhile/lstm_cell_16/Sigmoid:y:0%while/lstm_cell_16/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/add_1AddV2while/lstm_cell_16/mul:z:0while/lstm_cell_16/mul_1:z:0*
T0*'
_output_shapes
:��������� |
while/lstm_cell_16/Sigmoid_2Sigmoid!while/lstm_cell_16/split:output:3*
T0*'
_output_shapes
:��������� q
while/lstm_cell_16/Relu_1Reluwhile/lstm_cell_16/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_16/mul_2Mul while/lstm_cell_16/Sigmoid_2:y:0'while/lstm_cell_16/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_16/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_16/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:��������� y
while/Identity_5Identitywhile/lstm_cell_16/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp*^while/lstm_cell_16/BiasAdd/ReadVariableOp)^while/lstm_cell_16/MatMul/ReadVariableOp+^while/lstm_cell_16/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_16_biasadd_readvariableop_resource4while_lstm_cell_16_biasadd_readvariableop_resource_0"l
3while_lstm_cell_16_matmul_1_readvariableop_resource5while_lstm_cell_16_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_16_matmul_readvariableop_resource3while_lstm_cell_16_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_16/BiasAdd/ReadVariableOp)while/lstm_cell_16/BiasAdd/ReadVariableOp2T
(while/lstm_cell_16/MatMul/ReadVariableOp(while/lstm_cell_16/MatMul/ReadVariableOp2X
*while/lstm_cell_16/MatMul_1/ReadVariableOp*while/lstm_cell_16/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
G
+__inference_dropout_18_layer_call_fn_559562

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_18_layer_call_and_return_conditional_losses_556934`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
Quantity_Data:
serving_default_Quantity_Data:0���������
C
	Salt_Data6
serving_default_Salt_Data:0���������=
	Salt_Pred0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer_with_weights-3

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
cell

state_spec
	variables
 trainable_variables
!regularization_losses
"	keras_api
#_random_generator
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*_random_generator
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1_random_generator
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
�

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F_random_generator
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Qiter

Rbeta_1

Sbeta_2
	Tdecay
Ulearning_rate:m�;m�Im�Jm�Vm�Wm�Xm�Ym�Zm�[m�:v�;v�Iv�Jv�Vv�Wv�Xv�Yv�Zv�[v�"
	optimizer
f
V0
W1
X2
Y3
Z4
[5
:6
;7
I8
J9"
trackable_list_wrapper
f
V0
W1
X2
Y3
Z4
[5
:6
;7
I8
J9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_model_8_layer_call_fn_557015
(__inference_model_8_layer_call_fn_557650
(__inference_model_8_layer_call_fn_557676
(__inference_model_8_layer_call_fn_557552�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_model_8_layer_call_and_return_conditional_losses_557976
C__inference_model_8_layer_call_and_return_conditional_losses_558297
C__inference_model_8_layer_call_and_return_conditional_losses_557585
C__inference_model_8_layer_call_and_return_conditional_losses_557618�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference__wrapped_model_555920	Salt_DataQuantity_Data"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
aserving_default"
signature_map
�
b
state_size

Vkernel
Wrecurrent_kernel
Xbias
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g_random_generator
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

jstates
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
)__inference_Salt_Seq_layer_call_fn_558336
)__inference_Salt_Seq_layer_call_fn_558347
)__inference_Salt_Seq_layer_call_fn_558358
)__inference_Salt_Seq_layer_call_fn_558369�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558512
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558655
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558798
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558941�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�
p
state_size

Ykernel
Zrecurrent_kernel
[bias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u_random_generator
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

xstates
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
 trainable_variables
!regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
(__inference_Qty_Seq_layer_call_fn_558952
(__inference_Qty_Seq_layer_call_fn_558963
(__inference_Qty_Seq_layer_call_fn_558974
(__inference_Qty_Seq_layer_call_fn_558985�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559128
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559271
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559414
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559557�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
+__inference_dropout_18_layer_call_fn_559562
+__inference_dropout_18_layer_call_fn_559567�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dropout_18_layer_call_and_return_conditional_losses_559572
F__inference_dropout_18_layer_call_and_return_conditional_losses_559584�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
+__inference_dropout_19_layer_call_fn_559589
+__inference_dropout_19_layer_call_fn_559594�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dropout_19_layer_call_and_return_conditional_losses_559599
F__inference_dropout_19_layer_call_and_return_conditional_losses_559611�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�2�
.__inference_concatenate_8_layer_call_fn_559617�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_concatenate_8_layer_call_and_return_conditional_losses_559624�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
": @2Connector/kernel
:2Connector/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_Connector_layer_call_fn_559633�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_Connector_layer_call_and_return_conditional_losses_559643�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
+__inference_dropout_20_layer_call_fn_559648
+__inference_dropout_20_layer_call_fn_559653�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
F__inference_dropout_20_layer_call_and_return_conditional_losses_559658
F__inference_dropout_20_layer_call_and_return_conditional_losses_559670�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
": 2Salt_Pred/kernel
:2Salt_Pred/bias
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_Salt_Pred_layer_call_fn_559679�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_559689�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
/:-	�2Salt_Seq/lstm_cell_16/kernel
9:7	 �2&Salt_Seq/lstm_cell_16/recurrent_kernel
):'�2Salt_Seq/lstm_cell_16/bias
.:,	�2Qty_Seq/lstm_cell_17/kernel
8:6	 �2%Qty_Seq/lstm_cell_17/recurrent_kernel
(:&�2Qty_Seq/lstm_cell_17/bias
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_558325Quantity_Data	Salt_Data"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
c	variables
dtrainable_variables
eregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
-__inference_lstm_cell_16_layer_call_fn_559706
-__inference_lstm_cell_16_layer_call_fn_559723�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_559755
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_559787�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
-__inference_lstm_cell_17_layer_call_fn_559804
-__inference_lstm_cell_17_layer_call_fn_559821�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_559853
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_559885�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
':%@2Adam/Connector/kernel/m
!:2Adam/Connector/bias/m
':%2Adam/Salt_Pred/kernel/m
!:2Adam/Salt_Pred/bias/m
4:2	�2#Adam/Salt_Seq/lstm_cell_16/kernel/m
>:<	 �2-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/m
.:,�2!Adam/Salt_Seq/lstm_cell_16/bias/m
3:1	�2"Adam/Qty_Seq/lstm_cell_17/kernel/m
=:;	 �2,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/m
-:+�2 Adam/Qty_Seq/lstm_cell_17/bias/m
':%@2Adam/Connector/kernel/v
!:2Adam/Connector/bias/v
':%2Adam/Salt_Pred/kernel/v
!:2Adam/Salt_Pred/bias/v
4:2	�2#Adam/Salt_Seq/lstm_cell_16/kernel/v
>:<	 �2-Adam/Salt_Seq/lstm_cell_16/recurrent_kernel/v
.:,�2!Adam/Salt_Seq/lstm_cell_16/bias/v
3:1	�2"Adam/Qty_Seq/lstm_cell_17/kernel/v
=:;	 �2,Adam/Qty_Seq/lstm_cell_17/recurrent_kernel/v
-:+�2 Adam/Qty_Seq/lstm_cell_17/bias/v�
E__inference_Connector_layer_call_and_return_conditional_losses_559643\:;/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� }
*__inference_Connector_layer_call_fn_559633O:;/�,
%�"
 �
inputs���������@
� "�����������
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559128}YZ[O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"
�
0��������� 
� �
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559271}YZ[O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"
�
0��������� 
� �
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559414mYZ[?�<
5�2
$�!
inputs���������

 
p 

 
� "%�"
�
0��������� 
� �
C__inference_Qty_Seq_layer_call_and_return_conditional_losses_559557mYZ[?�<
5�2
$�!
inputs���������

 
p

 
� "%�"
�
0��������� 
� �
(__inference_Qty_Seq_layer_call_fn_558952pYZ[O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "���������� �
(__inference_Qty_Seq_layer_call_fn_558963pYZ[O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "���������� �
(__inference_Qty_Seq_layer_call_fn_558974`YZ[?�<
5�2
$�!
inputs���������

 
p 

 
� "���������� �
(__inference_Qty_Seq_layer_call_fn_558985`YZ[?�<
5�2
$�!
inputs���������

 
p

 
� "���������� �
E__inference_Salt_Pred_layer_call_and_return_conditional_losses_559689\IJ/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_Salt_Pred_layer_call_fn_559679OIJ/�,
%�"
 �
inputs���������
� "�����������
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558512}VWXO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"
�
0��������� 
� �
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558655}VWXO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"
�
0��������� 
� �
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558798mVWX?�<
5�2
$�!
inputs���������

 
p 

 
� "%�"
�
0��������� 
� �
D__inference_Salt_Seq_layer_call_and_return_conditional_losses_558941mVWX?�<
5�2
$�!
inputs���������

 
p

 
� "%�"
�
0��������� 
� �
)__inference_Salt_Seq_layer_call_fn_558336pVWXO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "���������� �
)__inference_Salt_Seq_layer_call_fn_558347pVWXO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "���������� �
)__inference_Salt_Seq_layer_call_fn_558358`VWX?�<
5�2
$�!
inputs���������

 
p 

 
� "���������� �
)__inference_Salt_Seq_layer_call_fn_558369`VWX?�<
5�2
$�!
inputs���������

 
p

 
� "���������� �
!__inference__wrapped_model_555920�
YZ[VWX:;IJh�e
^�[
Y�V
'�$
	Salt_Data���������
+�(
Quantity_Data���������
� "5�2
0
	Salt_Pred#� 
	Salt_Pred����������
I__inference_concatenate_8_layer_call_and_return_conditional_losses_559624�Z�W
P�M
K�H
"�
inputs/0��������� 
"�
inputs/1��������� 
� "%�"
�
0���������@
� �
.__inference_concatenate_8_layer_call_fn_559617vZ�W
P�M
K�H
"�
inputs/0��������� 
"�
inputs/1��������� 
� "����������@�
F__inference_dropout_18_layer_call_and_return_conditional_losses_559572\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
F__inference_dropout_18_layer_call_and_return_conditional_losses_559584\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� ~
+__inference_dropout_18_layer_call_fn_559562O3�0
)�&
 �
inputs��������� 
p 
� "���������� ~
+__inference_dropout_18_layer_call_fn_559567O3�0
)�&
 �
inputs��������� 
p
� "���������� �
F__inference_dropout_19_layer_call_and_return_conditional_losses_559599\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
F__inference_dropout_19_layer_call_and_return_conditional_losses_559611\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� ~
+__inference_dropout_19_layer_call_fn_559589O3�0
)�&
 �
inputs��������� 
p 
� "���������� ~
+__inference_dropout_19_layer_call_fn_559594O3�0
)�&
 �
inputs��������� 
p
� "���������� �
F__inference_dropout_20_layer_call_and_return_conditional_losses_559658\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
F__inference_dropout_20_layer_call_and_return_conditional_losses_559670\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� ~
+__inference_dropout_20_layer_call_fn_559648O3�0
)�&
 �
inputs���������
p 
� "����������~
+__inference_dropout_20_layer_call_fn_559653O3�0
)�&
 �
inputs���������
p
� "�����������
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_559755�VWX��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
H__inference_lstm_cell_16_layer_call_and_return_conditional_losses_559787�VWX��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
-__inference_lstm_cell_16_layer_call_fn_559706�VWX��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
-__inference_lstm_cell_16_layer_call_fn_559723�VWX��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_559853�YZ[��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
H__inference_lstm_cell_17_layer_call_and_return_conditional_losses_559885�YZ[��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
-__inference_lstm_cell_17_layer_call_fn_559804�YZ[��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
-__inference_lstm_cell_17_layer_call_fn_559821�YZ[��}
v�s
 �
inputs���������
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
C__inference_model_8_layer_call_and_return_conditional_losses_557585�
YZ[VWX:;IJp�m
f�c
Y�V
'�$
	Salt_Data���������
+�(
Quantity_Data���������
p 

 
� "%�"
�
0���������
� �
C__inference_model_8_layer_call_and_return_conditional_losses_557618�
YZ[VWX:;IJp�m
f�c
Y�V
'�$
	Salt_Data���������
+�(
Quantity_Data���������
p

 
� "%�"
�
0���������
� �
C__inference_model_8_layer_call_and_return_conditional_losses_557976�
YZ[VWX:;IJj�g
`�]
S�P
&�#
inputs/0���������
&�#
inputs/1���������
p 

 
� "%�"
�
0���������
� �
C__inference_model_8_layer_call_and_return_conditional_losses_558297�
YZ[VWX:;IJj�g
`�]
S�P
&�#
inputs/0���������
&�#
inputs/1���������
p

 
� "%�"
�
0���������
� �
(__inference_model_8_layer_call_fn_557015�
YZ[VWX:;IJp�m
f�c
Y�V
'�$
	Salt_Data���������
+�(
Quantity_Data���������
p 

 
� "�����������
(__inference_model_8_layer_call_fn_557552�
YZ[VWX:;IJp�m
f�c
Y�V
'�$
	Salt_Data���������
+�(
Quantity_Data���������
p

 
� "�����������
(__inference_model_8_layer_call_fn_557650�
YZ[VWX:;IJj�g
`�]
S�P
&�#
inputs/0���������
&�#
inputs/1���������
p 

 
� "�����������
(__inference_model_8_layer_call_fn_557676�
YZ[VWX:;IJj�g
`�]
S�P
&�#
inputs/0���������
&�#
inputs/1���������
p

 
� "�����������
$__inference_signature_wrapper_558325�
YZ[VWX:;IJ��~
� 
w�t
<
Quantity_Data+�(
Quantity_Data���������
4
	Salt_Data'�$
	Salt_Data���������"5�2
0
	Salt_Pred#� 
	Salt_Pred���������