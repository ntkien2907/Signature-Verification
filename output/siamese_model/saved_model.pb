��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718�
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:@*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:@*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:@*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:@*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:@*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:@*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_1/kernel
|
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*'
_output_shapes
:@�*
dtype0
s
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_1/bias
l
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:�*
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:�*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
RMSprop/dense_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameRMSprop/dense_1/kernel/rms
�
.RMSprop/dense_1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_1/kernel/rms*
_output_shapes

:*
dtype0
�
RMSprop/dense_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameRMSprop/dense_1/bias/rms
�
,RMSprop/dense_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_1/bias/rms*
_output_shapes
:*
dtype0
�
RMSprop/conv2d/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameRMSprop/conv2d/kernel/rms
�
-RMSprop/conv2d/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d/kernel/rms*&
_output_shapes
:@*
dtype0
�
RMSprop/conv2d/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameRMSprop/conv2d/bias/rms

+RMSprop/conv2d/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d/bias/rms*
_output_shapes
:@*
dtype0
�
%RMSprop/batch_normalization/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%RMSprop/batch_normalization/gamma/rms
�
9RMSprop/batch_normalization/gamma/rms/Read/ReadVariableOpReadVariableOp%RMSprop/batch_normalization/gamma/rms*
_output_shapes
:@*
dtype0
�
$RMSprop/batch_normalization/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$RMSprop/batch_normalization/beta/rms
�
8RMSprop/batch_normalization/beta/rms/Read/ReadVariableOpReadVariableOp$RMSprop/batch_normalization/beta/rms*
_output_shapes
:@*
dtype0
�
RMSprop/conv2d_1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*,
shared_nameRMSprop/conv2d_1/kernel/rms
�
/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_1/kernel/rms*'
_output_shapes
:@�*
dtype0
�
RMSprop/conv2d_1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_nameRMSprop/conv2d_1/bias/rms
�
-RMSprop/conv2d_1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_1/bias/rms*
_output_shapes	
:�*
dtype0
�
'RMSprop/batch_normalization_1/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'RMSprop/batch_normalization_1/gamma/rms
�
;RMSprop/batch_normalization_1/gamma/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_1/gamma/rms*
_output_shapes	
:�*
dtype0
�
&RMSprop/batch_normalization_1/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&RMSprop/batch_normalization_1/beta/rms
�
:RMSprop/batch_normalization_1/beta/rms/Read/ReadVariableOpReadVariableOp&RMSprop/batch_normalization_1/beta/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*)
shared_nameRMSprop/dense/kernel/rms
�
,RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/rms* 
_output_shapes
:
��*
dtype0
�
RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*'
shared_nameRMSprop/dense/bias/rms
~
*RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/rms*
_output_shapes	
:�*
dtype0
�
RMSprop/dense_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!RMSprop/dense_1/kernel/momentum
�
3RMSprop/dense_1/kernel/momentum/Read/ReadVariableOpReadVariableOpRMSprop/dense_1/kernel/momentum*
_output_shapes

:*
dtype0
�
RMSprop/dense_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/dense_1/bias/momentum
�
1RMSprop/dense_1/bias/momentum/Read/ReadVariableOpReadVariableOpRMSprop/dense_1/bias/momentum*
_output_shapes
:*
dtype0
�
RMSprop/conv2d/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/conv2d/kernel/momentum
�
2RMSprop/conv2d/kernel/momentum/Read/ReadVariableOpReadVariableOpRMSprop/conv2d/kernel/momentum*&
_output_shapes
:@*
dtype0
�
RMSprop/conv2d/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameRMSprop/conv2d/bias/momentum
�
0RMSprop/conv2d/bias/momentum/Read/ReadVariableOpReadVariableOpRMSprop/conv2d/bias/momentum*
_output_shapes
:@*
dtype0
�
*RMSprop/batch_normalization/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*RMSprop/batch_normalization/gamma/momentum
�
>RMSprop/batch_normalization/gamma/momentum/Read/ReadVariableOpReadVariableOp*RMSprop/batch_normalization/gamma/momentum*
_output_shapes
:@*
dtype0
�
)RMSprop/batch_normalization/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*:
shared_name+)RMSprop/batch_normalization/beta/momentum
�
=RMSprop/batch_normalization/beta/momentum/Read/ReadVariableOpReadVariableOp)RMSprop/batch_normalization/beta/momentum*
_output_shapes
:@*
dtype0
�
 RMSprop/conv2d_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*1
shared_name" RMSprop/conv2d_1/kernel/momentum
�
4RMSprop/conv2d_1/kernel/momentum/Read/ReadVariableOpReadVariableOp RMSprop/conv2d_1/kernel/momentum*'
_output_shapes
:@�*
dtype0
�
RMSprop/conv2d_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*/
shared_name RMSprop/conv2d_1/bias/momentum
�
2RMSprop/conv2d_1/bias/momentum/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_1/bias/momentum*
_output_shapes	
:�*
dtype0
�
,RMSprop/batch_normalization_1/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,RMSprop/batch_normalization_1/gamma/momentum
�
@RMSprop/batch_normalization_1/gamma/momentum/Read/ReadVariableOpReadVariableOp,RMSprop/batch_normalization_1/gamma/momentum*
_output_shapes	
:�*
dtype0
�
+RMSprop/batch_normalization_1/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+RMSprop/batch_normalization_1/beta/momentum
�
?RMSprop/batch_normalization_1/beta/momentum/Read/ReadVariableOpReadVariableOp+RMSprop/batch_normalization_1/beta/momentum*
_output_shapes	
:�*
dtype0
�
RMSprop/dense/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*.
shared_nameRMSprop/dense/kernel/momentum
�
1RMSprop/dense/kernel/momentum/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/momentum* 
_output_shapes
:
��*
dtype0
�
RMSprop/dense/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_nameRMSprop/dense/bias/momentum
�
/RMSprop/dense/bias/momentum/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/momentum*
_output_shapes	
:�*
dtype0

NoOpNoOp
�X
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�W
value�WB�W B�W
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
 
 
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
�
%iter
	&decay
'learning_rate
(momentum
)rho
rms�
 rms�
*rms�
+rms�
,rms�
-rms�
0rms�
1rms�
2rms�
3rms�
6rms�
7rms�momentum� momentum�*momentum�+momentum�,momentum�-momentum�0momentum�1momentum�2momentum�3momentum�6momentum�7momentum�
v
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
14
 15
V
*0
+1
,2
-3
04
15
26
37
68
79
10
 11
 
�
8non_trainable_variables

9layers
:layer_regularization_losses
;metrics
	variables
trainable_variables
<layer_metrics
	regularization_losses
 
 
h

*kernel
+bias
=regularization_losses
>	variables
?trainable_variables
@	keras_api
�
Aaxis
	,gamma
-beta
.moving_mean
/moving_variance
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
R
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
R
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
h

0kernel
1bias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
�
Raxis
	2gamma
3beta
4moving_mean
5moving_variance
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
R
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
R
[regularization_losses
\	variables
]trainable_variables
^	keras_api
R
_regularization_losses
`	variables
atrainable_variables
b	keras_api
h

6kernel
7bias
cregularization_losses
d	variables
etrainable_variables
f	keras_api
f
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
F
*0
+1
,2
-3
04
15
26
37
68
79
 
�
gnon_trainable_variables

hlayers
ilayer_regularization_losses
jmetrics
	variables
trainable_variables
klayer_metrics
regularization_losses
 
 
 
�
lnon_trainable_variables

mlayers
nlayer_regularization_losses
regularization_losses
	variables
trainable_variables
olayer_metrics
pmetrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
�
qnon_trainable_variables

rlayers
slayer_regularization_losses
!regularization_losses
"	variables
#trainable_variables
tlayer_metrics
umetrics
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEbatch_normalization/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEbatch_normalization/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEbatch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEconv2d_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbatch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUE
dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE

.0
/1
42
53
#
0
1
2
3
4
 

v0
w1
 
 

*0
+1

*0
+1
�
xnon_trainable_variables

ylayers
zlayer_regularization_losses
=regularization_losses
>	variables
?trainable_variables
{layer_metrics
|metrics
 
 

,0
-1
.2
/3

,0
-1
�
}non_trainable_variables

~layers
layer_regularization_losses
Bregularization_losses
C	variables
Dtrainable_variables
�layer_metrics
�metrics
 
 
 
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Fregularization_losses
G	variables
Htrainable_variables
�layer_metrics
�metrics
 
 
 
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Jregularization_losses
K	variables
Ltrainable_variables
�layer_metrics
�metrics
 

00
11

00
11
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Nregularization_losses
O	variables
Ptrainable_variables
�layer_metrics
�metrics
 
 

20
31
42
53

20
31
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Sregularization_losses
T	variables
Utrainable_variables
�layer_metrics
�metrics
 
 
 
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Wregularization_losses
X	variables
Ytrainable_variables
�layer_metrics
�metrics
 
 
 
�
�non_trainable_variables
�layers
 �layer_regularization_losses
[regularization_losses
\	variables
]trainable_variables
�layer_metrics
�metrics
 
 
 
�
�non_trainable_variables
�layers
 �layer_regularization_losses
_regularization_losses
`	variables
atrainable_variables
�layer_metrics
�metrics
 

60
71

60
71
�
�non_trainable_variables
�layers
 �layer_regularization_losses
cregularization_losses
d	variables
etrainable_variables
�layer_metrics
�metrics

.0
/1
42
53
N
0
1
2
3
4
5
6
7
8
9
10
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
 
 
 
 
 

.0
/1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

40
51
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
��
VARIABLE_VALUERMSprop/dense_1/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUERMSprop/dense_1/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUERMSprop/conv2d/kernel/rmsDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUERMSprop/conv2d/bias/rmsDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE%RMSprop/batch_normalization/gamma/rmsDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE$RMSprop/batch_normalization/beta/rmsDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUERMSprop/conv2d_1/kernel/rmsDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUERMSprop/conv2d_1/bias/rmsDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUE'RMSprop/batch_normalization_1/gamma/rmsDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
�~
VARIABLE_VALUE&RMSprop/batch_normalization_1/beta/rmsDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUERMSprop/dense/kernel/rmsEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUERMSprop/dense/bias/rmsEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/dense_1/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUERMSprop/dense_1/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUERMSprop/conv2d/kernel/momentumIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUERMSprop/conv2d/bias/momentumIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE*RMSprop/batch_normalization/gamma/momentumIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE)RMSprop/batch_normalization/beta/momentumIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE RMSprop/conv2d_1/kernel/momentumIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUERMSprop/conv2d_1/bias/momentumIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,RMSprop/batch_normalization_1/gamma/momentumIvariables/8/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE+RMSprop/batch_normalization_1/beta/momentumIvariables/9/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUERMSprop/dense/kernel/momentumJvariables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUERMSprop/dense/bias/momentumJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
serving_default_input_2Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2conv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_20118
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp.RMSprop/dense_1/kernel/rms/Read/ReadVariableOp,RMSprop/dense_1/bias/rms/Read/ReadVariableOp-RMSprop/conv2d/kernel/rms/Read/ReadVariableOp+RMSprop/conv2d/bias/rms/Read/ReadVariableOp9RMSprop/batch_normalization/gamma/rms/Read/ReadVariableOp8RMSprop/batch_normalization/beta/rms/Read/ReadVariableOp/RMSprop/conv2d_1/kernel/rms/Read/ReadVariableOp-RMSprop/conv2d_1/bias/rms/Read/ReadVariableOp;RMSprop/batch_normalization_1/gamma/rms/Read/ReadVariableOp:RMSprop/batch_normalization_1/beta/rms/Read/ReadVariableOp,RMSprop/dense/kernel/rms/Read/ReadVariableOp*RMSprop/dense/bias/rms/Read/ReadVariableOp3RMSprop/dense_1/kernel/momentum/Read/ReadVariableOp1RMSprop/dense_1/bias/momentum/Read/ReadVariableOp2RMSprop/conv2d/kernel/momentum/Read/ReadVariableOp0RMSprop/conv2d/bias/momentum/Read/ReadVariableOp>RMSprop/batch_normalization/gamma/momentum/Read/ReadVariableOp=RMSprop/batch_normalization/beta/momentum/Read/ReadVariableOp4RMSprop/conv2d_1/kernel/momentum/Read/ReadVariableOp2RMSprop/conv2d_1/bias/momentum/Read/ReadVariableOp@RMSprop/batch_normalization_1/gamma/momentum/Read/ReadVariableOp?RMSprop/batch_normalization_1/beta/momentum/Read/ReadVariableOp1RMSprop/dense/kernel/momentum/Read/ReadVariableOp/RMSprop/dense/bias/momentum/Read/ReadVariableOpConst*>
Tin7
523	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_21232
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhoconv2d/kernelconv2d/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_1/kernelconv2d_1/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense/kernel
dense/biastotalcounttotal_1count_1RMSprop/dense_1/kernel/rmsRMSprop/dense_1/bias/rmsRMSprop/conv2d/kernel/rmsRMSprop/conv2d/bias/rms%RMSprop/batch_normalization/gamma/rms$RMSprop/batch_normalization/beta/rmsRMSprop/conv2d_1/kernel/rmsRMSprop/conv2d_1/bias/rms'RMSprop/batch_normalization_1/gamma/rms&RMSprop/batch_normalization_1/beta/rmsRMSprop/dense/kernel/rmsRMSprop/dense/bias/rmsRMSprop/dense_1/kernel/momentumRMSprop/dense_1/bias/momentumRMSprop/conv2d/kernel/momentumRMSprop/conv2d/bias/momentum*RMSprop/batch_normalization/gamma/momentum)RMSprop/batch_normalization/beta/momentum RMSprop/conv2d_1/kernel/momentumRMSprop/conv2d_1/bias/momentum,RMSprop/batch_normalization_1/gamma/momentum+RMSprop/batch_normalization_1/beta/momentumRMSprop/dense/kernel/momentumRMSprop/dense/bias/momentum*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_21389�
�
�
'__inference_dense_1_layer_call_fn_20700

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_197162
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_18866

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20738

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
m
A__inference_lambda_layer_call_and_return_conditional_losses_20656
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices�
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:���������2	
MaximumS
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:���������2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
T
8__inference_global_average_pooling2d_layer_call_fn_19089

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_190832
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_19554
input_3!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_194902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_3
��
� 
!__inference__traced_restore_21389
file_prefix1
assignvariableop_dense_1_kernel:-
assignvariableop_1_dense_1_bias:)
assignvariableop_2_rmsprop_iter:	 *
 assignvariableop_3_rmsprop_decay: 2
(assignvariableop_4_rmsprop_learning_rate: -
#assignvariableop_5_rmsprop_momentum: (
assignvariableop_6_rmsprop_rho: :
 assignvariableop_7_conv2d_kernel:@,
assignvariableop_8_conv2d_bias:@:
,assignvariableop_9_batch_normalization_gamma:@:
,assignvariableop_10_batch_normalization_beta:@A
3assignvariableop_11_batch_normalization_moving_mean:@E
7assignvariableop_12_batch_normalization_moving_variance:@>
#assignvariableop_13_conv2d_1_kernel:@�0
!assignvariableop_14_conv2d_1_bias:	�>
/assignvariableop_15_batch_normalization_1_gamma:	�=
.assignvariableop_16_batch_normalization_1_beta:	�D
5assignvariableop_17_batch_normalization_1_moving_mean:	�H
9assignvariableop_18_batch_normalization_1_moving_variance:	�4
 assignvariableop_19_dense_kernel:
��-
assignvariableop_20_dense_bias:	�#
assignvariableop_21_total: #
assignvariableop_22_count: %
assignvariableop_23_total_1: %
assignvariableop_24_count_1: @
.assignvariableop_25_rmsprop_dense_1_kernel_rms::
,assignvariableop_26_rmsprop_dense_1_bias_rms:G
-assignvariableop_27_rmsprop_conv2d_kernel_rms:@9
+assignvariableop_28_rmsprop_conv2d_bias_rms:@G
9assignvariableop_29_rmsprop_batch_normalization_gamma_rms:@F
8assignvariableop_30_rmsprop_batch_normalization_beta_rms:@J
/assignvariableop_31_rmsprop_conv2d_1_kernel_rms:@�<
-assignvariableop_32_rmsprop_conv2d_1_bias_rms:	�J
;assignvariableop_33_rmsprop_batch_normalization_1_gamma_rms:	�I
:assignvariableop_34_rmsprop_batch_normalization_1_beta_rms:	�@
,assignvariableop_35_rmsprop_dense_kernel_rms:
��9
*assignvariableop_36_rmsprop_dense_bias_rms:	�E
3assignvariableop_37_rmsprop_dense_1_kernel_momentum:?
1assignvariableop_38_rmsprop_dense_1_bias_momentum:L
2assignvariableop_39_rmsprop_conv2d_kernel_momentum:@>
0assignvariableop_40_rmsprop_conv2d_bias_momentum:@L
>assignvariableop_41_rmsprop_batch_normalization_gamma_momentum:@K
=assignvariableop_42_rmsprop_batch_normalization_beta_momentum:@O
4assignvariableop_43_rmsprop_conv2d_1_kernel_momentum:@�A
2assignvariableop_44_rmsprop_conv2d_1_bias_momentum:	�O
@assignvariableop_45_rmsprop_batch_normalization_1_gamma_momentum:	�N
?assignvariableop_46_rmsprop_batch_normalization_1_beta_momentum:	�E
1assignvariableop_47_rmsprop_dense_kernel_momentum:
��>
/assignvariableop_48_rmsprop_dense_bias_momentum:	�
identity_50��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*�
value�B�2B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/8/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/9/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::*@
dtypes6
422	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_rmsprop_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_rmsprop_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp(assignvariableop_4_rmsprop_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp#assignvariableop_5_rmsprop_momentumIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_rmsprop_rhoIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv2d_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_batch_normalization_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp,assignvariableop_10_batch_normalization_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp3assignvariableop_11_batch_normalization_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp7assignvariableop_12_batch_normalization_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_conv2d_1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp!assignvariableop_14_conv2d_1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_1_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_batch_normalization_1_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp5assignvariableop_17_batch_normalization_1_moving_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp9assignvariableop_18_batch_normalization_1_moving_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_dense_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp.assignvariableop_25_rmsprop_dense_1_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp,assignvariableop_26_rmsprop_dense_1_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp-assignvariableop_27_rmsprop_conv2d_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_rmsprop_conv2d_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp9assignvariableop_29_rmsprop_batch_normalization_gamma_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp8assignvariableop_30_rmsprop_batch_normalization_beta_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp/assignvariableop_31_rmsprop_conv2d_1_kernel_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp-assignvariableop_32_rmsprop_conv2d_1_bias_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp;assignvariableop_33_rmsprop_batch_normalization_1_gamma_rmsIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp:assignvariableop_34_rmsprop_batch_normalization_1_beta_rmsIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp,assignvariableop_35_rmsprop_dense_kernel_rmsIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_rmsprop_dense_bias_rmsIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp3assignvariableop_37_rmsprop_dense_1_kernel_momentumIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp1assignvariableop_38_rmsprop_dense_1_bias_momentumIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOp2assignvariableop_39_rmsprop_conv2d_kernel_momentumIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp0assignvariableop_40_rmsprop_conv2d_bias_momentumIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp>assignvariableop_41_rmsprop_batch_normalization_gamma_momentumIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOp=assignvariableop_42_rmsprop_batch_normalization_beta_momentumIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp4assignvariableop_43_rmsprop_conv2d_1_kernel_momentumIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44�
AssignVariableOp_44AssignVariableOp2assignvariableop_44_rmsprop_conv2d_1_bias_momentumIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45�
AssignVariableOp_45AssignVariableOp@assignvariableop_45_rmsprop_batch_normalization_1_gamma_momentumIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46�
AssignVariableOp_46AssignVariableOp?assignvariableop_46_rmsprop_batch_normalization_1_beta_momentumIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47�
AssignVariableOp_47AssignVariableOp1assignvariableop_47_rmsprop_dense_kernel_momentumIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48�
AssignVariableOp_48AssignVariableOp/assignvariableop_48_rmsprop_dense_bias_momentumIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_489
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�	
Identity_49Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_49�	
Identity_50IdentityIdentity_49:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_50"#
identity_50Identity_50:output:0*w
_input_shapesf
d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482(
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
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19004

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_21020

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:���������&7�2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:���������&7�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������&7�:X T
0
_output_shapes
:���������&7�
 
_user_specified_nameinputs
�
�
5__inference_batch_normalization_1_layer_call_fn_20989

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_190042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_18822

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_19198

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:���������&7�2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:���������&7�2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������&7�:X T
0
_output_shapes
:���������&7�
 
_user_specified_nameinputs
�
�
3__inference_batch_normalization_layer_call_fn_20818

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_188662
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_19076

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_190702
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_20118
input_1
input_2!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__wrapped_model_188002
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�3
�
@__inference_model_layer_call_and_return_conditional_losses_19638
input_3&
conv2d_19599:@
conv2d_19601:@'
batch_normalization_19604:@'
batch_normalization_19606:@'
batch_normalization_19608:@'
batch_normalization_19610:@)
conv2d_1_19615:@�
conv2d_1_19617:	�*
batch_normalization_1_19620:	�*
batch_normalization_1_19622:	�*
batch_normalization_1_19624:	�*
batch_normalization_1_19626:	�
dense_19632:
��
dense_19634:	�
identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_19599conv2d_19601*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_191072 
conv2d/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_19604batch_normalization_19606batch_normalization_19608batch_normalization_19610*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_193922-
+batch_normalization/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_189322
max_pooling2d/PartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_193562!
dropout/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_19615conv2d_1_19617*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_191592"
 conv2d_1/StatefulPartitionedCall�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_19620batch_normalization_1_19622batch_normalization_1_19624batch_normalization_1_19626*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_193152/
-batch_normalization_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_190702!
max_pooling2d_1/PartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_192792#
!dropout_1/StatefulPartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_190832*
(global_average_pooling2d/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0dense_19632dense_19634*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_192112
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_3
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_19723

inputs
inputs_1%
model_19647:@
model_19649:@
model_19651:@
model_19653:@
model_19655:@
model_19657:@&
model_19659:@�
model_19661:	�
model_19663:	�
model_19665:	�
model_19667:	�
model_19669:	�
model_19671:
��
model_19673:	�
dense_1_19717:
dense_1_19719:
identity��dense_1/StatefulPartitionedCall�model/StatefulPartitionedCall�model/StatefulPartitionedCall_1�
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_19647model_19649model_19651model_19653model_19655model_19657model_19659model_19661model_19663model_19665model_19667model_19669model_19671model_19673*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_192182
model/StatefulPartitionedCall�
model/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_19647model_19649model_19651model_19653model_19655model_19657model_19659model_19661model_19663model_19665model_19667model_19669model_19671model_19673*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_192182!
model/StatefulPartitionedCall_1�
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_197032
lambda/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_1_19717dense_1_19719*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_197162!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_19716

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_20231
inputs_0
inputs_1E
+model_conv2d_conv2d_readvariableop_resource:@:
,model_conv2d_biasadd_readvariableop_resource:@?
1model_batch_normalization_readvariableop_resource:@A
3model_batch_normalization_readvariableop_1_resource:@P
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource:@R
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@H
-model_conv2d_1_conv2d_readvariableop_resource:@�=
.model_conv2d_1_biasadd_readvariableop_resource:	�B
3model_batch_normalization_1_readvariableop_resource:	�D
5model_batch_normalization_1_readvariableop_1_resource:	�S
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�>
*model_dense_matmul_readvariableop_resource:
��:
+model_dense_biasadd_readvariableop_resource:	�8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�9model/batch_normalization/FusedBatchNormV3/ReadVariableOp�;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�(model/batch_normalization/ReadVariableOp�*model/batch_normalization/ReadVariableOp_1�*model/batch_normalization/ReadVariableOp_2�*model/batch_normalization/ReadVariableOp_3�;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�*model/batch_normalization_1/ReadVariableOp�,model/batch_normalization_1/ReadVariableOp_1�,model/batch_normalization_1/ReadVariableOp_2�,model/batch_normalization_1/ReadVariableOp_3�#model/conv2d/BiasAdd/ReadVariableOp�%model/conv2d/BiasAdd_1/ReadVariableOp�"model/conv2d/Conv2D/ReadVariableOp�$model/conv2d/Conv2D_1/ReadVariableOp�%model/conv2d_1/BiasAdd/ReadVariableOp�'model/conv2d_1/BiasAdd_1/ReadVariableOp�$model/conv2d_1/Conv2D/ReadVariableOp�&model/conv2d_1/Conv2D_1/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�$model/dense/BiasAdd_1/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�#model/dense/MatMul_1/ReadVariableOp�
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"model/conv2d/Conv2D/ReadVariableOp�
model/conv2d/Conv2DConv2Dinputs_0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
model/conv2d/Conv2D�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#model/conv2d/BiasAdd/ReadVariableOp�
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/BiasAdd�
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/Relu�
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model/batch_normalization/ReadVariableOp�
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization/ReadVariableOp_1�
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp�
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV3model/conv2d/Relu:activations:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 2,
*model/batch_normalization/FusedBatchNormV3�
model/max_pooling2d/MaxPoolMaxPool.model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool�
model/dropout/IdentityIdentity$model/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������Mn@2
model/dropout/Identity�
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOp�
model/conv2d_1/Conv2DConv2Dmodel/dropout/Identity:output:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
model/conv2d_1/Conv2D�
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOp�
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/BiasAdd�
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/Relu�
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*model/batch_normalization_1/ReadVariableOp�
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,model/batch_normalization_1/ReadVariableOp_1�
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02=
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3!model/conv2d_1/Relu:activations:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 2.
,model/batch_normalization_1/FusedBatchNormV3�
model/max_pooling2d_1/MaxPoolMaxPool0model/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPool�
model/dropout_1/IdentityIdentity&model/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:���������&7�2
model/dropout_1/Identity�
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/global_average_pooling2d/Mean/reduction_indices�
#model/global_average_pooling2d/MeanMean!model/dropout_1/Identity:output:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2%
#model/global_average_pooling2d/Mean�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02#
!model/dense/MatMul/ReadVariableOp�
model/dense/MatMulMatMul,model/global_average_pooling2d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/MatMul�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"model/dense/BiasAdd/ReadVariableOp�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/BiasAdd�
$model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02&
$model/conv2d/Conv2D_1/ReadVariableOp�
model/conv2d/Conv2D_1Conv2Dinputs_1,model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
model/conv2d/Conv2D_1�
%model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model/conv2d/BiasAdd_1/ReadVariableOp�
model/conv2d/BiasAdd_1BiasAddmodel/conv2d/Conv2D_1:output:0-model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/BiasAdd_1�
model/conv2d/Relu_1Relumodel/conv2d/BiasAdd_1:output:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/Relu_1�
*model/batch_normalization/ReadVariableOp_2ReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization/ReadVariableOp_2�
*model/batch_normalization/ReadVariableOp_3ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization/ReadVariableOp_3�
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02=
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02?
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�
,model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3!model/conv2d/Relu_1:activations:02model/batch_normalization/ReadVariableOp_2:value:02model/batch_normalization/ReadVariableOp_3:value:0Cmodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Emodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 2.
,model/batch_normalization/FusedBatchNormV3_1�
model/max_pooling2d/MaxPool_1MaxPool0model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool_1�
model/dropout/Identity_1Identity&model/max_pooling2d/MaxPool_1:output:0*
T0*/
_output_shapes
:���������Mn@2
model/dropout/Identity_1�
&model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02(
&model/conv2d_1/Conv2D_1/ReadVariableOp�
model/conv2d_1/Conv2D_1Conv2D!model/dropout/Identity_1:output:0.model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
model/conv2d_1/Conv2D_1�
'model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'model/conv2d_1/BiasAdd_1/ReadVariableOp�
model/conv2d_1/BiasAdd_1BiasAdd model/conv2d_1/Conv2D_1:output:0/model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/BiasAdd_1�
model/conv2d_1/Relu_1Relu!model/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/Relu_1�
,model/batch_normalization_1/ReadVariableOp_2ReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,model/batch_normalization_1/ReadVariableOp_2�
,model/batch_normalization_1/ReadVariableOp_3ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,model/batch_normalization_1/ReadVariableOp_3�
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02A
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�
.model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3#model/conv2d_1/Relu_1:activations:04model/batch_normalization_1/ReadVariableOp_2:value:04model/batch_normalization_1/ReadVariableOp_3:value:0Emodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Gmodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 20
.model/batch_normalization_1/FusedBatchNormV3_1�
model/max_pooling2d_1/MaxPool_1MaxPool2model/batch_normalization_1/FusedBatchNormV3_1:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2!
model/max_pooling2d_1/MaxPool_1�
model/dropout_1/Identity_1Identity(model/max_pooling2d_1/MaxPool_1:output:0*
T0*0
_output_shapes
:���������&7�2
model/dropout_1/Identity_1�
7model/global_average_pooling2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/global_average_pooling2d/Mean_1/reduction_indices�
%model/global_average_pooling2d/Mean_1Mean#model/dropout_1/Identity_1:output:0@model/global_average_pooling2d/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:����������2'
%model/global_average_pooling2d/Mean_1�
#model/dense/MatMul_1/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02%
#model/dense/MatMul_1/ReadVariableOp�
model/dense/MatMul_1MatMul.model/global_average_pooling2d/Mean_1:output:0+model/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/MatMul_1�
$model/dense/BiasAdd_1/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$model/dense/BiasAdd_1/ReadVariableOp�
model/dense/BiasAdd_1BiasAddmodel/dense/MatMul_1:product:0,model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/BiasAdd_1�

lambda/subSubmodel/dense/BiasAdd:output:0model/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:����������2

lambda/subk
lambda/SquareSquarelambda/sub:z:0*
T0*(
_output_shapes
:����������2
lambda/Square~
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
lambda/Sum/reduction_indices�

lambda/SumSumlambda/Square:y:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2

lambda/Sumi
lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
lambda/Maximum/y�
lambda/MaximumMaximumlambda/Sum:output:0lambda/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
lambda/Maximumh
lambda/SqrtSqrtlambda/Maximum:z:0*
T0*'
_output_shapes
:���������2
lambda/Sqrt�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMullambda/Sqrt:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_1/Sigmoid�
IdentityIdentitydense_1/Sigmoid:y:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1<^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp>^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1+^model/batch_normalization/ReadVariableOp_2+^model/batch_normalization/ReadVariableOp_3<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1>^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp@^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_1-^model/batch_normalization_1/ReadVariableOp_2-^model/batch_normalization_1/ReadVariableOp_3$^model/conv2d/BiasAdd/ReadVariableOp&^model/conv2d/BiasAdd_1/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp%^model/conv2d/Conv2D_1/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp(^model/conv2d_1/BiasAdd_1/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp'^model/conv2d_1/Conv2D_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/BiasAdd_1/ReadVariableOp"^model/dense/MatMul/ReadVariableOp$^model/dense/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12z
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2~
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12X
*model/batch_normalization/ReadVariableOp_2*model/batch_normalization/ReadVariableOp_22X
*model/batch_normalization/ReadVariableOp_3*model/batch_normalization/ReadVariableOp_32z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12~
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12\
,model/batch_normalization_1/ReadVariableOp_2,model/batch_normalization_1/ReadVariableOp_22\
,model/batch_normalization_1/ReadVariableOp_3,model/batch_normalization_1/ReadVariableOp_32J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2N
%model/conv2d/BiasAdd_1/ReadVariableOp%model/conv2d/BiasAdd_1/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2L
$model/conv2d/Conv2D_1/ReadVariableOp$model/conv2d/Conv2D_1/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2R
'model/conv2d_1/BiasAdd_1/ReadVariableOp'model/conv2d_1/BiasAdd_1/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2P
&model/conv2d_1/Conv2D_1/ReadVariableOp&model/conv2d_1/Conv2D_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/BiasAdd_1/ReadVariableOp$model/dense/BiasAdd_1/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2J
#model/dense/MatMul_1/ReadVariableOp#model/dense/MatMul_1/ReadVariableOp:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�0
�
@__inference_model_layer_call_and_return_conditional_losses_19596
input_3&
conv2d_19557:@
conv2d_19559:@'
batch_normalization_19562:@'
batch_normalization_19564:@'
batch_normalization_19566:@'
batch_normalization_19568:@)
conv2d_1_19573:@�
conv2d_1_19575:	�*
batch_normalization_1_19578:	�*
batch_normalization_1_19580:	�*
batch_normalization_1_19582:	�*
batch_normalization_1_19584:	�
dense_19590:
��
dense_19592:	�
identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_19557conv2d_19559*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_191072 
conv2d/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_19562batch_normalization_19564batch_normalization_19566batch_normalization_19568*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_191302-
+batch_normalization/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_189322
max_pooling2d/PartitionedCall�
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_191462
dropout/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_19573conv2d_1_19575*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_191592"
 conv2d_1/StatefulPartitionedCall�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_19578batch_normalization_1_19580batch_normalization_1_19582batch_normalization_1_19584*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_191822/
-batch_normalization_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_190702!
max_pooling2d_1/PartitionedCall�
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_191982
dropout_1/PartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_190832*
(global_average_pooling2d/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0dense_19590dense_19592*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_192112
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_3
�	
k
A__inference_lambda_layer_call_and_return_conditional_losses_19703

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices�
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:���������2	
MaximumS
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:���������2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
R
&__inference_lambda_layer_call_fn_20680
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
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_197902
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
5__inference_batch_normalization_1_layer_call_fn_21002

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_191822
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:���������Mn�: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������Mn�
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_20644

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_194902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_18960

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_21052

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�L
�
@__inference_model_layer_call_and_return_conditional_losses_20506

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@9
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@�7
(conv2d_1_biasadd_readvariableop_resource:	�<
-batch_normalization_1_readvariableop_resource:	�>
/batch_normalization_1_readvariableop_1_resource:	�M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�
identity��3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_1/ReadVariableOp�&batch_normalization_1/ReadVariableOp_1�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
conv2d/Relu�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02$
"batch_normalization/ReadVariableOp�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$batch_normalization/ReadVariableOp_1�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/Relu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 2&
$batch_normalization/FusedBatchNormV3�
max_pooling2d/MaxPoolMaxPool(batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/Identity�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
conv2d_1/Relu�
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$batch_normalization_1/ReadVariableOp�
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype02(
&batch_normalization_1/ReadVariableOp_1�
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/Relu:activations:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3�
max_pooling2d_1/MaxPoolMaxPool*batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:���������&7�2
dropout_1/Identity�
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices�
global_average_pooling2d/MeanMeandropout_1/Identity:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
global_average_pooling2d/Mean�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMul&global_average_pooling2d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAdd�
IdentityIdentitydense/BiasAdd:output:04^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
5__inference_batch_normalization_1_layer_call_fn_21015

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_193152
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:���������Mn�: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������Mn�
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_20711

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_21032

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:���������&7�2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:���������&7�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������&7�2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������&7�2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:���������&7�2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:���������&7�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������&7�:X T
0
_output_shapes
:���������&7�
 
_user_specified_nameinputs
�
�
3__inference_batch_normalization_layer_call_fn_20805

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_188222
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_1_layer_call_fn_20891

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_191592
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Mn@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�

�
B__inference_dense_1_layer_call_and_return_conditional_losses_20691

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_model_1_layer_call_fn_19962
input_1
input_2!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_198892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20945

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:���������Mn�: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:���������Mn�
 
_user_specified_nameinputs
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_19159

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Mn@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19315

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:���������Mn�: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:���������Mn�
 
_user_specified_nameinputs
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_20072
input_1
input_2%
model_20021:@
model_20023:@
model_20025:@
model_20027:@
model_20029:@
model_20031:@&
model_20033:@�
model_20035:	�
model_20037:	�
model_20039:	�
model_20041:	�
model_20043:	�
model_20045:
��
model_20047:	�
dense_1_20066:
dense_1_20068:
identity��dense_1/StatefulPartitionedCall�model/StatefulPartitionedCall�model/StatefulPartitionedCall_1�
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_20021model_20023model_20025model_20027model_20029model_20031model_20033model_20035model_20037model_20039model_20041model_20043model_20045model_20047*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_194902
model/StatefulPartitionedCall�
model/StatefulPartitionedCall_1StatefulPartitionedCallinput_2model_20021model_20023model_20025model_20027model_20029model_20031model_20033model_20035model_20037model_20039model_20041model_20043model_20045model_20047^model/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_194902!
model/StatefulPartitionedCall_1�
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_197902
lambda/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_1_20066dense_1_20068*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_197162!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
'__inference_model_1_layer_call_fn_20448
inputs_0
inputs_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_198892
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�	
�
@__inference_dense_layer_call_and_return_conditional_losses_19211

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
B__inference_model_1_layer_call_and_return_conditional_losses_20372
inputs_0
inputs_1E
+model_conv2d_conv2d_readvariableop_resource:@:
,model_conv2d_biasadd_readvariableop_resource:@?
1model_batch_normalization_readvariableop_resource:@A
3model_batch_normalization_readvariableop_1_resource:@P
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource:@R
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@H
-model_conv2d_1_conv2d_readvariableop_resource:@�=
.model_conv2d_1_biasadd_readvariableop_resource:	�B
3model_batch_normalization_1_readvariableop_resource:	�D
5model_batch_normalization_1_readvariableop_1_resource:	�S
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�U
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�>
*model_dense_matmul_readvariableop_resource:
��:
+model_dense_biasadd_readvariableop_resource:	�8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity��dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�(model/batch_normalization/AssignNewValue�*model/batch_normalization/AssignNewValue_1�*model/batch_normalization/AssignNewValue_2�*model/batch_normalization/AssignNewValue_3�9model/batch_normalization/FusedBatchNormV3/ReadVariableOp�;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�(model/batch_normalization/ReadVariableOp�*model/batch_normalization/ReadVariableOp_1�*model/batch_normalization/ReadVariableOp_2�*model/batch_normalization/ReadVariableOp_3�*model/batch_normalization_1/AssignNewValue�,model/batch_normalization_1/AssignNewValue_1�,model/batch_normalization_1/AssignNewValue_2�,model/batch_normalization_1/AssignNewValue_3�;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�*model/batch_normalization_1/ReadVariableOp�,model/batch_normalization_1/ReadVariableOp_1�,model/batch_normalization_1/ReadVariableOp_2�,model/batch_normalization_1/ReadVariableOp_3�#model/conv2d/BiasAdd/ReadVariableOp�%model/conv2d/BiasAdd_1/ReadVariableOp�"model/conv2d/Conv2D/ReadVariableOp�$model/conv2d/Conv2D_1/ReadVariableOp�%model/conv2d_1/BiasAdd/ReadVariableOp�'model/conv2d_1/BiasAdd_1/ReadVariableOp�$model/conv2d_1/Conv2D/ReadVariableOp�&model/conv2d_1/Conv2D_1/ReadVariableOp�"model/dense/BiasAdd/ReadVariableOp�$model/dense/BiasAdd_1/ReadVariableOp�!model/dense/MatMul/ReadVariableOp�#model/dense/MatMul_1/ReadVariableOp�
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"model/conv2d/Conv2D/ReadVariableOp�
model/conv2d/Conv2DConv2Dinputs_0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
model/conv2d/Conv2D�
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#model/conv2d/BiasAdd/ReadVariableOp�
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/BiasAdd�
model/conv2d/ReluRelumodel/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/Relu�
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model/batch_normalization/ReadVariableOp�
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization/ReadVariableOp_1�
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02;
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp�
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02=
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV3model/conv2d/Relu:activations:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2,
*model/batch_normalization/FusedBatchNormV3�
(model/batch_normalization/AssignNewValueAssignVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource7model/batch_normalization/FusedBatchNormV3:batch_mean:0:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02*
(model/batch_normalization/AssignNewValue�
*model/batch_normalization/AssignNewValue_1AssignVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource;model/batch_normalization/FusedBatchNormV3:batch_variance:0<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02,
*model/batch_normalization/AssignNewValue_1�
model/max_pooling2d/MaxPoolMaxPool.model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool
model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
model/dropout/dropout/Const�
model/dropout/dropout/MulMul$model/max_pooling2d/MaxPool:output:0$model/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������Mn@2
model/dropout/dropout/Mul�
model/dropout/dropout/ShapeShape$model/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
model/dropout/dropout/Shape�
2model/dropout/dropout/random_uniform/RandomUniformRandomUniform$model/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������Mn@*
dtype024
2model/dropout/dropout/random_uniform/RandomUniform�
$model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2&
$model/dropout/dropout/GreaterEqual/y�
"model/dropout/dropout/GreaterEqualGreaterEqual;model/dropout/dropout/random_uniform/RandomUniform:output:0-model/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������Mn@2$
"model/dropout/dropout/GreaterEqual�
model/dropout/dropout/CastCast&model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������Mn@2
model/dropout/dropout/Cast�
model/dropout/dropout/Mul_1Mulmodel/dropout/dropout/Mul:z:0model/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������Mn@2
model/dropout/dropout/Mul_1�
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOp�
model/conv2d_1/Conv2DConv2Dmodel/dropout/dropout/Mul_1:z:0,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
model/conv2d_1/Conv2D�
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOp�
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/BiasAdd�
model/conv2d_1/ReluRelumodel/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/Relu�
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*model/batch_normalization_1/ReadVariableOp�
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,model/batch_normalization_1/ReadVariableOp_1�
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02=
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3!model/conv2d_1/Relu:activations:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2.
,model/batch_normalization_1/FusedBatchNormV3�
*model/batch_normalization_1/AssignNewValueAssignVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource9model/batch_normalization_1/FusedBatchNormV3:batch_mean:0<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02,
*model/batch_normalization_1/AssignNewValue�
,model/batch_normalization_1/AssignNewValue_1AssignVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource=model/batch_normalization_1/FusedBatchNormV3:batch_variance:0>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02.
,model/batch_normalization_1/AssignNewValue_1�
model/max_pooling2d_1/MaxPoolMaxPool0model/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPool�
model/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
model/dropout_1/dropout/Const�
model/dropout_1/dropout/MulMul&model/max_pooling2d_1/MaxPool:output:0&model/dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:���������&7�2
model/dropout_1/dropout/Mul�
model/dropout_1/dropout/ShapeShape&model/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
model/dropout_1/dropout/Shape�
4model/dropout_1/dropout/random_uniform/RandomUniformRandomUniform&model/dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:���������&7�*
dtype026
4model/dropout_1/dropout/random_uniform/RandomUniform�
&model/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2(
&model/dropout_1/dropout/GreaterEqual/y�
$model/dropout_1/dropout/GreaterEqualGreaterEqual=model/dropout_1/dropout/random_uniform/RandomUniform:output:0/model/dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������&7�2&
$model/dropout_1/dropout/GreaterEqual�
model/dropout_1/dropout/CastCast(model/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������&7�2
model/dropout_1/dropout/Cast�
model/dropout_1/dropout/Mul_1Mulmodel/dropout_1/dropout/Mul:z:0 model/dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:���������&7�2
model/dropout_1/dropout/Mul_1�
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/global_average_pooling2d/Mean/reduction_indices�
#model/global_average_pooling2d/MeanMean!model/dropout_1/dropout/Mul_1:z:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2%
#model/global_average_pooling2d/Mean�
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02#
!model/dense/MatMul/ReadVariableOp�
model/dense/MatMulMatMul,model/global_average_pooling2d/Mean:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/MatMul�
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02$
"model/dense/BiasAdd/ReadVariableOp�
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/BiasAdd�
$model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02&
$model/conv2d/Conv2D_1/ReadVariableOp�
model/conv2d/Conv2D_1Conv2Dinputs_1,model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
model/conv2d/Conv2D_1�
%model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02'
%model/conv2d/BiasAdd_1/ReadVariableOp�
model/conv2d/BiasAdd_1BiasAddmodel/conv2d/Conv2D_1:output:0-model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/BiasAdd_1�
model/conv2d/Relu_1Relumodel/conv2d/BiasAdd_1:output:0*
T0*1
_output_shapes
:�����������@2
model/conv2d/Relu_1�
*model/batch_normalization/ReadVariableOp_2ReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization/ReadVariableOp_2�
*model/batch_normalization/ReadVariableOp_3ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02,
*model/batch_normalization/ReadVariableOp_3�
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource)^model/batch_normalization/AssignNewValue*
_output_shapes
:@*
dtype02=
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource+^model/batch_normalization/AssignNewValue_1*
_output_shapes
:@*
dtype02?
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�
,model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3!model/conv2d/Relu_1:activations:02model/batch_normalization/ReadVariableOp_2:value:02model/batch_normalization/ReadVariableOp_3:value:0Cmodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Emodel/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2.
,model/batch_normalization/FusedBatchNormV3_1�
*model/batch_normalization/AssignNewValue_2AssignVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource9model/batch_normalization/FusedBatchNormV3_1:batch_mean:0)^model/batch_normalization/AssignNewValue<^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype02,
*model/batch_normalization/AssignNewValue_2�
*model/batch_normalization/AssignNewValue_3AssignVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource=model/batch_normalization/FusedBatchNormV3_1:batch_variance:0+^model/batch_normalization/AssignNewValue_1>^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype02,
*model/batch_normalization/AssignNewValue_3�
model/max_pooling2d/MaxPool_1MaxPool0model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool_1�
model/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
model/dropout/dropout_1/Const�
model/dropout/dropout_1/MulMul&model/max_pooling2d/MaxPool_1:output:0&model/dropout/dropout_1/Const:output:0*
T0*/
_output_shapes
:���������Mn@2
model/dropout/dropout_1/Mul�
model/dropout/dropout_1/ShapeShape&model/max_pooling2d/MaxPool_1:output:0*
T0*
_output_shapes
:2
model/dropout/dropout_1/Shape�
4model/dropout/dropout_1/random_uniform/RandomUniformRandomUniform&model/dropout/dropout_1/Shape:output:0*
T0*/
_output_shapes
:���������Mn@*
dtype026
4model/dropout/dropout_1/random_uniform/RandomUniform�
&model/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2(
&model/dropout/dropout_1/GreaterEqual/y�
$model/dropout/dropout_1/GreaterEqualGreaterEqual=model/dropout/dropout_1/random_uniform/RandomUniform:output:0/model/dropout/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������Mn@2&
$model/dropout/dropout_1/GreaterEqual�
model/dropout/dropout_1/CastCast(model/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������Mn@2
model/dropout/dropout_1/Cast�
model/dropout/dropout_1/Mul_1Mulmodel/dropout/dropout_1/Mul:z:0 model/dropout/dropout_1/Cast:y:0*
T0*/
_output_shapes
:���������Mn@2
model/dropout/dropout_1/Mul_1�
&model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02(
&model/conv2d_1/Conv2D_1/ReadVariableOp�
model/conv2d_1/Conv2D_1Conv2D!model/dropout/dropout_1/Mul_1:z:0.model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
model/conv2d_1/Conv2D_1�
'model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02)
'model/conv2d_1/BiasAdd_1/ReadVariableOp�
model/conv2d_1/BiasAdd_1BiasAdd model/conv2d_1/Conv2D_1:output:0/model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/BiasAdd_1�
model/conv2d_1/Relu_1Relu!model/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:���������Mn�2
model/conv2d_1/Relu_1�
,model/batch_normalization_1/ReadVariableOp_2ReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,model/batch_normalization_1/ReadVariableOp_2�
,model/batch_normalization_1/ReadVariableOp_3ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype02.
,model/batch_normalization_1/ReadVariableOp_3�
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource+^model/batch_normalization_1/AssignNewValue*
_output_shapes	
:�*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource-^model/batch_normalization_1/AssignNewValue_1*
_output_shapes	
:�*
dtype02A
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�
.model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3#model/conv2d_1/Relu_1:activations:04model/batch_normalization_1/ReadVariableOp_2:value:04model/batch_normalization_1/ReadVariableOp_3:value:0Emodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Gmodel/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<20
.model/batch_normalization_1/FusedBatchNormV3_1�
,model/batch_normalization_1/AssignNewValue_2AssignVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource;model/batch_normalization_1/FusedBatchNormV3_1:batch_mean:0+^model/batch_normalization_1/AssignNewValue>^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype02.
,model/batch_normalization_1/AssignNewValue_2�
,model/batch_normalization_1/AssignNewValue_3AssignVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource?model/batch_normalization_1/FusedBatchNormV3_1:batch_variance:0-^model/batch_normalization_1/AssignNewValue_1@^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype02.
,model/batch_normalization_1/AssignNewValue_3�
model/max_pooling2d_1/MaxPool_1MaxPool2model/batch_normalization_1/FusedBatchNormV3_1:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2!
model/max_pooling2d_1/MaxPool_1�
model/dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2!
model/dropout_1/dropout_1/Const�
model/dropout_1/dropout_1/MulMul(model/max_pooling2d_1/MaxPool_1:output:0(model/dropout_1/dropout_1/Const:output:0*
T0*0
_output_shapes
:���������&7�2
model/dropout_1/dropout_1/Mul�
model/dropout_1/dropout_1/ShapeShape(model/max_pooling2d_1/MaxPool_1:output:0*
T0*
_output_shapes
:2!
model/dropout_1/dropout_1/Shape�
6model/dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform(model/dropout_1/dropout_1/Shape:output:0*
T0*0
_output_shapes
:���������&7�*
dtype028
6model/dropout_1/dropout_1/random_uniform/RandomUniform�
(model/dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2*
(model/dropout_1/dropout_1/GreaterEqual/y�
&model/dropout_1/dropout_1/GreaterEqualGreaterEqual?model/dropout_1/dropout_1/random_uniform/RandomUniform:output:01model/dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������&7�2(
&model/dropout_1/dropout_1/GreaterEqual�
model/dropout_1/dropout_1/CastCast*model/dropout_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������&7�2 
model/dropout_1/dropout_1/Cast�
model/dropout_1/dropout_1/Mul_1Mul!model/dropout_1/dropout_1/Mul:z:0"model/dropout_1/dropout_1/Cast:y:0*
T0*0
_output_shapes
:���������&7�2!
model/dropout_1/dropout_1/Mul_1�
7model/global_average_pooling2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      29
7model/global_average_pooling2d/Mean_1/reduction_indices�
%model/global_average_pooling2d/Mean_1Mean#model/dropout_1/dropout_1/Mul_1:z:0@model/global_average_pooling2d/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:����������2'
%model/global_average_pooling2d/Mean_1�
#model/dense/MatMul_1/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02%
#model/dense/MatMul_1/ReadVariableOp�
model/dense/MatMul_1MatMul.model/global_average_pooling2d/Mean_1:output:0+model/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/MatMul_1�
$model/dense/BiasAdd_1/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$model/dense/BiasAdd_1/ReadVariableOp�
model/dense/BiasAdd_1BiasAddmodel/dense/MatMul_1:product:0,model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model/dense/BiasAdd_1�

lambda/subSubmodel/dense/BiasAdd:output:0model/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:����������2

lambda/subk
lambda/SquareSquarelambda/sub:z:0*
T0*(
_output_shapes
:����������2
lambda/Square~
lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
lambda/Sum/reduction_indices�

lambda/SumSumlambda/Square:y:0%lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2

lambda/Sumi
lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
lambda/Maximum/y�
lambda/MaximumMaximumlambda/Sum:output:0lambda/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
lambda/Maximumh
lambda/SqrtSqrtlambda/Maximum:z:0*
T0*'
_output_shapes
:���������2
lambda/Sqrt�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMullambda/Sqrt:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_1/Sigmoid�
IdentityIdentitydense_1/Sigmoid:y:0^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp)^model/batch_normalization/AssignNewValue+^model/batch_normalization/AssignNewValue_1+^model/batch_normalization/AssignNewValue_2+^model/batch_normalization/AssignNewValue_3:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1<^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp>^model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1+^model/batch_normalization/ReadVariableOp_2+^model/batch_normalization/ReadVariableOp_3+^model/batch_normalization_1/AssignNewValue-^model/batch_normalization_1/AssignNewValue_1-^model/batch_normalization_1/AssignNewValue_2-^model/batch_normalization_1/AssignNewValue_3<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1>^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp@^model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_1-^model/batch_normalization_1/ReadVariableOp_2-^model/batch_normalization_1/ReadVariableOp_3$^model/conv2d/BiasAdd/ReadVariableOp&^model/conv2d/BiasAdd_1/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp%^model/conv2d/Conv2D_1/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp(^model/conv2d_1/BiasAdd_1/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp'^model/conv2d_1/Conv2D_1/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/BiasAdd_1/ReadVariableOp"^model/dense/MatMul/ReadVariableOp$^model/dense/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2T
(model/batch_normalization/AssignNewValue(model/batch_normalization/AssignNewValue2X
*model/batch_normalization/AssignNewValue_1*model/batch_normalization/AssignNewValue_12X
*model/batch_normalization/AssignNewValue_2*model/batch_normalization/AssignNewValue_22X
*model/batch_normalization/AssignNewValue_3*model/batch_normalization/AssignNewValue_32v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12z
;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp;model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2~
=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1=model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12X
*model/batch_normalization/ReadVariableOp_2*model/batch_normalization/ReadVariableOp_22X
*model/batch_normalization/ReadVariableOp_3*model/batch_normalization/ReadVariableOp_32X
*model/batch_normalization_1/AssignNewValue*model/batch_normalization_1/AssignNewValue2\
,model/batch_normalization_1/AssignNewValue_1,model/batch_normalization_1/AssignNewValue_12\
,model/batch_normalization_1/AssignNewValue_2,model/batch_normalization_1/AssignNewValue_22\
,model/batch_normalization_1/AssignNewValue_3,model/batch_normalization_1/AssignNewValue_32z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12~
=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp=model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12\
,model/batch_normalization_1/ReadVariableOp_2,model/batch_normalization_1/ReadVariableOp_22\
,model/batch_normalization_1/ReadVariableOp_3,model/batch_normalization_1/ReadVariableOp_32J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2N
%model/conv2d/BiasAdd_1/ReadVariableOp%model/conv2d/BiasAdd_1/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2L
$model/conv2d/Conv2D_1/ReadVariableOp$model/conv2d/Conv2D_1/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2R
'model/conv2d_1/BiasAdd_1/ReadVariableOp'model/conv2d_1/BiasAdd_1/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2P
&model/conv2d_1/Conv2D_1/ReadVariableOp&model/conv2d_1/Conv2D_1/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/BiasAdd_1/ReadVariableOp$model/dense/BiasAdd_1/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2J
#model/dense/MatMul_1/ReadVariableOp#model/dense/MatMul_1/ReadVariableOp:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�e
�
__inference__traced_save_21232
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop9
5savev2_rmsprop_dense_1_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_1_bias_rms_read_readvariableop8
4savev2_rmsprop_conv2d_kernel_rms_read_readvariableop6
2savev2_rmsprop_conv2d_bias_rms_read_readvariableopD
@savev2_rmsprop_batch_normalization_gamma_rms_read_readvariableopC
?savev2_rmsprop_batch_normalization_beta_rms_read_readvariableop:
6savev2_rmsprop_conv2d_1_kernel_rms_read_readvariableop8
4savev2_rmsprop_conv2d_1_bias_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_1_gamma_rms_read_readvariableopE
Asavev2_rmsprop_batch_normalization_1_beta_rms_read_readvariableop7
3savev2_rmsprop_dense_kernel_rms_read_readvariableop5
1savev2_rmsprop_dense_bias_rms_read_readvariableop>
:savev2_rmsprop_dense_1_kernel_momentum_read_readvariableop<
8savev2_rmsprop_dense_1_bias_momentum_read_readvariableop=
9savev2_rmsprop_conv2d_kernel_momentum_read_readvariableop;
7savev2_rmsprop_conv2d_bias_momentum_read_readvariableopI
Esavev2_rmsprop_batch_normalization_gamma_momentum_read_readvariableopH
Dsavev2_rmsprop_batch_normalization_beta_momentum_read_readvariableop?
;savev2_rmsprop_conv2d_1_kernel_momentum_read_readvariableop=
9savev2_rmsprop_conv2d_1_bias_momentum_read_readvariableopK
Gsavev2_rmsprop_batch_normalization_1_gamma_momentum_read_readvariableopJ
Fsavev2_rmsprop_batch_normalization_1_beta_momentum_read_readvariableop<
8savev2_rmsprop_dense_kernel_momentum_read_readvariableop:
6savev2_rmsprop_dense_bias_momentum_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*�
value�B�2B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/0/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/6/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/7/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/8/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBDvariables/9/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/12/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBEvariables/13/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/2/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/3/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/6/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/7/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/8/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBIvariables/9/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBJvariables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:2*
dtype0*w
valuenBl2B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop5savev2_rmsprop_dense_1_kernel_rms_read_readvariableop3savev2_rmsprop_dense_1_bias_rms_read_readvariableop4savev2_rmsprop_conv2d_kernel_rms_read_readvariableop2savev2_rmsprop_conv2d_bias_rms_read_readvariableop@savev2_rmsprop_batch_normalization_gamma_rms_read_readvariableop?savev2_rmsprop_batch_normalization_beta_rms_read_readvariableop6savev2_rmsprop_conv2d_1_kernel_rms_read_readvariableop4savev2_rmsprop_conv2d_1_bias_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_1_gamma_rms_read_readvariableopAsavev2_rmsprop_batch_normalization_1_beta_rms_read_readvariableop3savev2_rmsprop_dense_kernel_rms_read_readvariableop1savev2_rmsprop_dense_bias_rms_read_readvariableop:savev2_rmsprop_dense_1_kernel_momentum_read_readvariableop8savev2_rmsprop_dense_1_bias_momentum_read_readvariableop9savev2_rmsprop_conv2d_kernel_momentum_read_readvariableop7savev2_rmsprop_conv2d_bias_momentum_read_readvariableopEsavev2_rmsprop_batch_normalization_gamma_momentum_read_readvariableopDsavev2_rmsprop_batch_normalization_beta_momentum_read_readvariableop;savev2_rmsprop_conv2d_1_kernel_momentum_read_readvariableop9savev2_rmsprop_conv2d_1_bias_momentum_read_readvariableopGsavev2_rmsprop_batch_normalization_1_gamma_momentum_read_readvariableopFsavev2_rmsprop_batch_normalization_1_beta_momentum_read_readvariableop8savev2_rmsprop_dense_kernel_momentum_read_readvariableop6savev2_rmsprop_dense_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *@
dtypes6
422	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: : : : : :@:@:@:@:@:@:@�:�:�:�:�:�:
��:�: : : : :::@:@:@:@:@�:�:�:�:
��:�:::@:@:@:@:@�:�:�:�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:- )
'
_output_shapes
:@�:!!

_output_shapes	
:�:!"

_output_shapes	
:�:!#

_output_shapes	
:�:&$"
 
_output_shapes
:
��:!%

_output_shapes	
:�:$& 

_output_shapes

:: '

_output_shapes
::,((
&
_output_shapes
:@: )

_output_shapes
:@: *

_output_shapes
:@: +

_output_shapes
:@:-,)
'
_output_shapes
:@�:!-

_output_shapes	
:�:!.

_output_shapes	
:�:!/

_output_shapes	
:�:&0"
 
_output_shapes
:
��:!1

_output_shapes	
:�:2

_output_shapes
: 
�
�
&__inference_conv2d_layer_call_fn_20720

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_191072
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20927

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�0
�
@__inference_model_layer_call_and_return_conditional_losses_19218

inputs&
conv2d_19108:@
conv2d_19110:@'
batch_normalization_19131:@'
batch_normalization_19133:@'
batch_normalization_19135:@'
batch_normalization_19137:@)
conv2d_1_19160:@�
conv2d_1_19162:	�*
batch_normalization_1_19183:	�*
batch_normalization_1_19185:	�*
batch_normalization_1_19187:	�*
batch_normalization_1_19189:	�
dense_19212:
��
dense_19214:	�
identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_19108conv2d_19110*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_191072 
conv2d/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_19131batch_normalization_19133batch_normalization_19135batch_normalization_19137*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_191302-
+batch_normalization/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_189322
max_pooling2d/PartitionedCall�
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_191462
dropout/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_19160conv2d_1_19162*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_191592"
 conv2d_1/StatefulPartitionedCall�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_19183batch_normalization_1_19185batch_normalization_1_19187batch_normalization_1_19189*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_191822/
-batch_normalization_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_190702!
max_pooling2d_1/PartitionedCall�
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_191982
dropout_1/PartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_190832*
(global_average_pooling2d/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0dense_19212dense_19214*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_192112
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
`
'__inference_dropout_layer_call_fn_20871

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_193562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������Mn@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������Mn@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
'__inference_model_1_layer_call_fn_20410
inputs_0
inputs_1!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_197232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1
�
�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20882

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������Mn@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_19146

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������Mn@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������Mn@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������Mn@:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_19889

inputs
inputs_1%
model_19838:@
model_19840:@
model_19842:@
model_19844:@
model_19846:@
model_19848:@&
model_19850:@�
model_19852:	�
model_19854:	�
model_19856:	�
model_19858:	�
model_19860:	�
model_19862:
��
model_19864:	�
dense_1_19883:
dense_1_19885:
identity��dense_1/StatefulPartitionedCall�model/StatefulPartitionedCall�model/StatefulPartitionedCall_1�
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_19838model_19840model_19842model_19844model_19846model_19848model_19850model_19852model_19854model_19856model_19858model_19860model_19862model_19864*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_194902
model/StatefulPartitionedCall�
model/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1model_19838model_19840model_19842model_19844model_19846model_19848model_19850model_19852model_19854model_19856model_19858model_19860model_19862model_19864^model/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_194902!
model/StatefulPartitionedCall_1�
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_197902
lambda/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_1_19883dense_1_19885*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_197162!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�3
�
@__inference_model_layer_call_and_return_conditional_losses_19490

inputs&
conv2d_19451:@
conv2d_19453:@'
batch_normalization_19456:@'
batch_normalization_19458:@'
batch_normalization_19460:@'
batch_normalization_19462:@)
conv2d_1_19467:@�
conv2d_1_19469:	�*
batch_normalization_1_19472:	�*
batch_normalization_1_19474:	�*
batch_normalization_1_19476:	�*
batch_normalization_1_19478:	�
dense_19484:
��
dense_19486:	�
identity��+batch_normalization/StatefulPartitionedCall�-batch_normalization_1/StatefulPartitionedCall�conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dropout/StatefulPartitionedCall�!dropout_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_19451conv2d_19453*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_191072 
conv2d/StatefulPartitionedCall�
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_19456batch_normalization_19458batch_normalization_19460batch_normalization_19462*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_193922-
+batch_normalization/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_189322
max_pooling2d/PartitionedCall�
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_193562!
dropout/StatefulPartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_19467conv2d_1_19469*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_191592"
 conv2d_1/StatefulPartitionedCall�
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_19472batch_normalization_1_19474batch_normalization_1_19476batch_normalization_1_19478*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������Mn�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_193152/
-batch_normalization_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_190702!
max_pooling2d_1/PartitionedCall�
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_192792#
!dropout_1/StatefulPartitionedCall�
(global_average_pooling2d/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_190832*
(global_average_pooling2d/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0dense_19484dense_19486*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_192112
dense/StatefulPartitionedCall�
IdentityIdentity&dense/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_18938

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_189322
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
B__inference_dropout_layer_call_and_return_conditional_losses_19356

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������Mn@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������Mn@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������Mn@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������Mn@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������Mn@:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
3__inference_batch_normalization_layer_call_fn_20831

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_191302
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
`
B__inference_dropout_layer_call_and_return_conditional_losses_20849

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������Mn@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������Mn@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������Mn@:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20909

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
��
�
 __inference__wrapped_model_18800
input_1
input_2M
3model_1_model_conv2d_conv2d_readvariableop_resource:@B
4model_1_model_conv2d_biasadd_readvariableop_resource:@G
9model_1_model_batch_normalization_readvariableop_resource:@I
;model_1_model_batch_normalization_readvariableop_1_resource:@X
Jmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_resource:@Z
Lmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@P
5model_1_model_conv2d_1_conv2d_readvariableop_resource:@�E
6model_1_model_conv2d_1_biasadd_readvariableop_resource:	�J
;model_1_model_batch_normalization_1_readvariableop_resource:	�L
=model_1_model_batch_normalization_1_readvariableop_1_resource:	�[
Lmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�]
Nmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�F
2model_1_model_dense_matmul_readvariableop_resource:
��B
3model_1_model_dense_biasadd_readvariableop_resource:	�@
.model_1_dense_1_matmul_readvariableop_resource:=
/model_1_dense_1_biasadd_readvariableop_resource:
identity��&model_1/dense_1/BiasAdd/ReadVariableOp�%model_1/dense_1/MatMul/ReadVariableOp�Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp�Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�0model_1/model/batch_normalization/ReadVariableOp�2model_1/model/batch_normalization/ReadVariableOp_1�2model_1/model/batch_normalization/ReadVariableOp_2�2model_1/model/batch_normalization/ReadVariableOp_3�Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�2model_1/model/batch_normalization_1/ReadVariableOp�4model_1/model/batch_normalization_1/ReadVariableOp_1�4model_1/model/batch_normalization_1/ReadVariableOp_2�4model_1/model/batch_normalization_1/ReadVariableOp_3�+model_1/model/conv2d/BiasAdd/ReadVariableOp�-model_1/model/conv2d/BiasAdd_1/ReadVariableOp�*model_1/model/conv2d/Conv2D/ReadVariableOp�,model_1/model/conv2d/Conv2D_1/ReadVariableOp�-model_1/model/conv2d_1/BiasAdd/ReadVariableOp�/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp�,model_1/model/conv2d_1/Conv2D/ReadVariableOp�.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp�*model_1/model/dense/BiasAdd/ReadVariableOp�,model_1/model/dense/BiasAdd_1/ReadVariableOp�)model_1/model/dense/MatMul/ReadVariableOp�+model_1/model/dense/MatMul_1/ReadVariableOp�
*model_1/model/conv2d/Conv2D/ReadVariableOpReadVariableOp3model_1_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02,
*model_1/model/conv2d/Conv2D/ReadVariableOp�
model_1/model/conv2d/Conv2DConv2Dinput_12model_1/model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
model_1/model/conv2d/Conv2D�
+model_1/model/conv2d/BiasAdd/ReadVariableOpReadVariableOp4model_1_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+model_1/model/conv2d/BiasAdd/ReadVariableOp�
model_1/model/conv2d/BiasAddBiasAdd$model_1/model/conv2d/Conv2D:output:03model_1/model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
model_1/model/conv2d/BiasAdd�
model_1/model/conv2d/ReluRelu%model_1/model/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
model_1/model/conv2d/Relu�
0model_1/model/batch_normalization/ReadVariableOpReadVariableOp9model_1_model_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype022
0model_1/model/batch_normalization/ReadVariableOp�
2model_1/model/batch_normalization/ReadVariableOp_1ReadVariableOp;model_1_model_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype024
2model_1/model/batch_normalization/ReadVariableOp_1�
Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpJmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02C
Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp�
Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpLmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02E
Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
2model_1/model/batch_normalization/FusedBatchNormV3FusedBatchNormV3'model_1/model/conv2d/Relu:activations:08model_1/model/batch_normalization/ReadVariableOp:value:0:model_1/model/batch_normalization/ReadVariableOp_1:value:0Imodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Kmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 24
2model_1/model/batch_normalization/FusedBatchNormV3�
#model_1/model/max_pooling2d/MaxPoolMaxPool6model_1/model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2%
#model_1/model/max_pooling2d/MaxPool�
model_1/model/dropout/IdentityIdentity,model_1/model/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:���������Mn@2 
model_1/model/dropout/Identity�
,model_1/model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp5model_1_model_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02.
,model_1/model/conv2d_1/Conv2D/ReadVariableOp�
model_1/model/conv2d_1/Conv2DConv2D'model_1/model/dropout/Identity:output:04model_1/model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
model_1/model/conv2d_1/Conv2D�
-model_1/model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp6model_1_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-model_1/model/conv2d_1/BiasAdd/ReadVariableOp�
model_1/model/conv2d_1/BiasAddBiasAdd&model_1/model/conv2d_1/Conv2D:output:05model_1/model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2 
model_1/model/conv2d_1/BiasAdd�
model_1/model/conv2d_1/ReluRelu'model_1/model/conv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
model_1/model/conv2d_1/Relu�
2model_1/model/batch_normalization_1/ReadVariableOpReadVariableOp;model_1_model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype024
2model_1/model/batch_normalization_1/ReadVariableOp�
4model_1/model/batch_normalization_1/ReadVariableOp_1ReadVariableOp=model_1_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype026
4model_1/model/batch_normalization_1/ReadVariableOp_1�
Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02E
Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�
Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02G
Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�
4model_1/model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3)model_1/model/conv2d_1/Relu:activations:0:model_1/model/batch_normalization_1/ReadVariableOp:value:0<model_1/model/batch_normalization_1/ReadVariableOp_1:value:0Kmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 26
4model_1/model/batch_normalization_1/FusedBatchNormV3�
%model_1/model/max_pooling2d_1/MaxPoolMaxPool8model_1/model/batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2'
%model_1/model/max_pooling2d_1/MaxPool�
 model_1/model/dropout_1/IdentityIdentity.model_1/model/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:���������&7�2"
 model_1/model/dropout_1/Identity�
=model_1/model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2?
=model_1/model/global_average_pooling2d/Mean/reduction_indices�
+model_1/model/global_average_pooling2d/MeanMean)model_1/model/dropout_1/Identity:output:0Fmodel_1/model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2-
+model_1/model/global_average_pooling2d/Mean�
)model_1/model/dense/MatMul/ReadVariableOpReadVariableOp2model_1_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02+
)model_1/model/dense/MatMul/ReadVariableOp�
model_1/model/dense/MatMulMatMul4model_1/model/global_average_pooling2d/Mean:output:01model_1/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/model/dense/MatMul�
*model_1/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_1_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02,
*model_1/model/dense/BiasAdd/ReadVariableOp�
model_1/model/dense/BiasAddBiasAdd$model_1/model/dense/MatMul:product:02model_1/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/model/dense/BiasAdd�
,model_1/model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp3model_1_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02.
,model_1/model/conv2d/Conv2D_1/ReadVariableOp�
model_1/model/conv2d/Conv2D_1Conv2Dinput_24model_1/model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
model_1/model/conv2d/Conv2D_1�
-model_1/model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp4model_1_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-model_1/model/conv2d/BiasAdd_1/ReadVariableOp�
model_1/model/conv2d/BiasAdd_1BiasAdd&model_1/model/conv2d/Conv2D_1:output:05model_1/model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2 
model_1/model/conv2d/BiasAdd_1�
model_1/model/conv2d/Relu_1Relu'model_1/model/conv2d/BiasAdd_1:output:0*
T0*1
_output_shapes
:�����������@2
model_1/model/conv2d/Relu_1�
2model_1/model/batch_normalization/ReadVariableOp_2ReadVariableOp9model_1_model_batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype024
2model_1/model/batch_normalization/ReadVariableOp_2�
2model_1/model/batch_normalization/ReadVariableOp_3ReadVariableOp;model_1_model_batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype024
2model_1/model/batch_normalization/ReadVariableOp_3�
Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpJmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02E
Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�
Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpLmodel_1_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02G
Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�
4model_1/model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3)model_1/model/conv2d/Relu_1:activations:0:model_1/model/batch_normalization/ReadVariableOp_2:value:0:model_1/model/batch_normalization/ReadVariableOp_3:value:0Kmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Mmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 26
4model_1/model/batch_normalization/FusedBatchNormV3_1�
%model_1/model/max_pooling2d/MaxPool_1MaxPool8model_1/model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2'
%model_1/model/max_pooling2d/MaxPool_1�
 model_1/model/dropout/Identity_1Identity.model_1/model/max_pooling2d/MaxPool_1:output:0*
T0*/
_output_shapes
:���������Mn@2"
 model_1/model/dropout/Identity_1�
.model_1/model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp5model_1_model_conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype020
.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp�
model_1/model/conv2d_1/Conv2D_1Conv2D)model_1/model/dropout/Identity_1:output:06model_1/model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2!
model_1/model/conv2d_1/Conv2D_1�
/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp6model_1_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype021
/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp�
 model_1/model/conv2d_1/BiasAdd_1BiasAdd(model_1/model/conv2d_1/Conv2D_1:output:07model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2"
 model_1/model/conv2d_1/BiasAdd_1�
model_1/model/conv2d_1/Relu_1Relu)model_1/model/conv2d_1/BiasAdd_1:output:0*
T0*0
_output_shapes
:���������Mn�2
model_1/model/conv2d_1/Relu_1�
4model_1/model/batch_normalization_1/ReadVariableOp_2ReadVariableOp;model_1_model_batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype026
4model_1/model/batch_normalization_1/ReadVariableOp_2�
4model_1/model/batch_normalization_1/ReadVariableOp_3ReadVariableOp=model_1_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype026
4model_1/model/batch_normalization_1/ReadVariableOp_3�
Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpLmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02G
Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�
Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpNmodel_1_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02I
Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�
6model_1/model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3+model_1/model/conv2d_1/Relu_1:activations:0<model_1/model/batch_normalization_1/ReadVariableOp_2:value:0<model_1/model/batch_normalization_1/ReadVariableOp_3:value:0Mmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Omodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 28
6model_1/model/batch_normalization_1/FusedBatchNormV3_1�
'model_1/model/max_pooling2d_1/MaxPool_1MaxPool:model_1/model/batch_normalization_1/FusedBatchNormV3_1:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2)
'model_1/model/max_pooling2d_1/MaxPool_1�
"model_1/model/dropout_1/Identity_1Identity0model_1/model/max_pooling2d_1/MaxPool_1:output:0*
T0*0
_output_shapes
:���������&7�2$
"model_1/model/dropout_1/Identity_1�
?model_1/model/global_average_pooling2d/Mean_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2A
?model_1/model/global_average_pooling2d/Mean_1/reduction_indices�
-model_1/model/global_average_pooling2d/Mean_1Mean+model_1/model/dropout_1/Identity_1:output:0Hmodel_1/model/global_average_pooling2d/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:����������2/
-model_1/model/global_average_pooling2d/Mean_1�
+model_1/model/dense/MatMul_1/ReadVariableOpReadVariableOp2model_1_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+model_1/model/dense/MatMul_1/ReadVariableOp�
model_1/model/dense/MatMul_1MatMul6model_1/model/global_average_pooling2d/Mean_1:output:03model_1/model/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/model/dense/MatMul_1�
,model_1/model/dense/BiasAdd_1/ReadVariableOpReadVariableOp3model_1_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,model_1/model/dense/BiasAdd_1/ReadVariableOp�
model_1/model/dense/BiasAdd_1BiasAdd&model_1/model/dense/MatMul_1:product:04model_1/model/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
model_1/model/dense/BiasAdd_1�
model_1/lambda/subSub$model_1/model/dense/BiasAdd:output:0&model_1/model/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:����������2
model_1/lambda/sub�
model_1/lambda/SquareSquaremodel_1/lambda/sub:z:0*
T0*(
_output_shapes
:����������2
model_1/lambda/Square�
$model_1/lambda/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2&
$model_1/lambda/Sum/reduction_indices�
model_1/lambda/SumSummodel_1/lambda/Square:y:0-model_1/lambda/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
model_1/lambda/Sumy
model_1/lambda/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
model_1/lambda/Maximum/y�
model_1/lambda/MaximumMaximummodel_1/lambda/Sum:output:0!model_1/lambda/Maximum/y:output:0*
T0*'
_output_shapes
:���������2
model_1/lambda/Maximum�
model_1/lambda/SqrtSqrtmodel_1/lambda/Maximum:z:0*
T0*'
_output_shapes
:���������2
model_1/lambda/Sqrt�
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02'
%model_1/dense_1/MatMul/ReadVariableOp�
model_1/dense_1/MatMulMatMulmodel_1/lambda/Sqrt:y:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_1/MatMul�
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp�
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_1/dense_1/BiasAdd�
model_1/dense_1/SigmoidSigmoid model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_1/dense_1/Sigmoid�
IdentityIdentitymodel_1/dense_1/Sigmoid:y:0'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOpB^model_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOpD^model_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1D^model_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpF^model_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_11^model_1/model/batch_normalization/ReadVariableOp3^model_1/model/batch_normalization/ReadVariableOp_13^model_1/model/batch_normalization/ReadVariableOp_23^model_1/model/batch_normalization/ReadVariableOp_3D^model_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^model_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1F^model_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpH^model_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_13^model_1/model/batch_normalization_1/ReadVariableOp5^model_1/model/batch_normalization_1/ReadVariableOp_15^model_1/model/batch_normalization_1/ReadVariableOp_25^model_1/model/batch_normalization_1/ReadVariableOp_3,^model_1/model/conv2d/BiasAdd/ReadVariableOp.^model_1/model/conv2d/BiasAdd_1/ReadVariableOp+^model_1/model/conv2d/Conv2D/ReadVariableOp-^model_1/model/conv2d/Conv2D_1/ReadVariableOp.^model_1/model/conv2d_1/BiasAdd/ReadVariableOp0^model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp-^model_1/model/conv2d_1/Conv2D/ReadVariableOp/^model_1/model/conv2d_1/Conv2D_1/ReadVariableOp+^model_1/model/dense/BiasAdd/ReadVariableOp-^model_1/model/dense/BiasAdd_1/ReadVariableOp*^model_1/model/dense/MatMul/ReadVariableOp,^model_1/model/dense/MatMul_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2�
Amodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOpAmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Cmodel_1/model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
Cmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpCmodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Emodel_1/model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12d
0model_1/model/batch_normalization/ReadVariableOp0model_1/model/batch_normalization/ReadVariableOp2h
2model_1/model/batch_normalization/ReadVariableOp_12model_1/model/batch_normalization/ReadVariableOp_12h
2model_1/model/batch_normalization/ReadVariableOp_22model_1/model/batch_normalization/ReadVariableOp_22h
2model_1/model/batch_normalization/ReadVariableOp_32model_1/model/batch_normalization/ReadVariableOp_32�
Cmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCmodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Emodel_1/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Emodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpEmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Gmodel_1/model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12h
2model_1/model/batch_normalization_1/ReadVariableOp2model_1/model/batch_normalization_1/ReadVariableOp2l
4model_1/model/batch_normalization_1/ReadVariableOp_14model_1/model/batch_normalization_1/ReadVariableOp_12l
4model_1/model/batch_normalization_1/ReadVariableOp_24model_1/model/batch_normalization_1/ReadVariableOp_22l
4model_1/model/batch_normalization_1/ReadVariableOp_34model_1/model/batch_normalization_1/ReadVariableOp_32Z
+model_1/model/conv2d/BiasAdd/ReadVariableOp+model_1/model/conv2d/BiasAdd/ReadVariableOp2^
-model_1/model/conv2d/BiasAdd_1/ReadVariableOp-model_1/model/conv2d/BiasAdd_1/ReadVariableOp2X
*model_1/model/conv2d/Conv2D/ReadVariableOp*model_1/model/conv2d/Conv2D/ReadVariableOp2\
,model_1/model/conv2d/Conv2D_1/ReadVariableOp,model_1/model/conv2d/Conv2D_1/ReadVariableOp2^
-model_1/model/conv2d_1/BiasAdd/ReadVariableOp-model_1/model/conv2d_1/BiasAdd/ReadVariableOp2b
/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp/model_1/model/conv2d_1/BiasAdd_1/ReadVariableOp2\
,model_1/model/conv2d_1/Conv2D/ReadVariableOp,model_1/model/conv2d_1/Conv2D/ReadVariableOp2`
.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp.model_1/model/conv2d_1/Conv2D_1/ReadVariableOp2X
*model_1/model/dense/BiasAdd/ReadVariableOp*model_1/model/dense/BiasAdd/ReadVariableOp2\
,model_1/model/dense/BiasAdd_1/ReadVariableOp,model_1/model/dense/BiasAdd_1/ReadVariableOp2V
)model_1/model/dense/MatMul/ReadVariableOp)model_1/model/dense/MatMul/ReadVariableOp2Z
+model_1/model/dense/MatMul_1/ReadVariableOp+model_1/model/dense/MatMul_1/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
a
B__inference_dropout_layer_call_and_return_conditional_losses_20861

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������Mn@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������Mn@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������Mn@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������Mn@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������Mn@:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20756

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19130

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�����������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19070

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_20611

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_192182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_19279

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:���������&7�2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:���������&7�*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������&7�2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������&7�2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:���������&7�2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:���������&7�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������&7�:X T
0
_output_shapes
:���������&7�
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20792

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�����������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
E
)__inference_dropout_1_layer_call_fn_21037

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_191982
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������&7�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������&7�:X T
0
_output_shapes
:���������&7�
 
_user_specified_nameinputs
�m
�
@__inference_model_layer_call_and_return_conditional_losses_20578

inputs?
%conv2d_conv2d_readvariableop_resource:@4
&conv2d_biasadd_readvariableop_resource:@9
+batch_normalization_readvariableop_resource:@;
-batch_normalization_readvariableop_1_resource:@J
<batch_normalization_fusedbatchnormv3_readvariableop_resource:@L
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource:@B
'conv2d_1_conv2d_readvariableop_resource:@�7
(conv2d_1_biasadd_readvariableop_resource:	�<
-batch_normalization_1_readvariableop_resource:	�>
/batch_normalization_1_readvariableop_1_resource:	�M
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:	�O
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�
identity��"batch_normalization/AssignNewValue�$batch_normalization/AssignNewValue_1�3batch_normalization/FusedBatchNormV3/ReadVariableOp�5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�"batch_normalization/ReadVariableOp�$batch_normalization/ReadVariableOp_1�$batch_normalization_1/AssignNewValue�&batch_normalization_1/AssignNewValue_1�5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�$batch_normalization_1/ReadVariableOp�&batch_normalization_1/ReadVariableOp_1�conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2
conv2d/BiasAddw
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
conv2d/Relu�
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:@*
dtype02$
"batch_normalization/ReadVariableOp�
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$batch_normalization/ReadVariableOp_1�
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOp�
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1�
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/Relu:activations:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2&
$batch_normalization/FusedBatchNormV3�
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue�
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1�
max_pooling2d/MaxPoolMaxPool(batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������Mn@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPools
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/dropout/Const�
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/dropout/Mul|
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:���������Mn@*
dtype02.
,dropout/dropout/random_uniform/RandomUniform�
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2 
dropout/dropout/GreaterEqual/y�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������Mn@2
dropout/dropout/GreaterEqual�
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������Mn@2
dropout/dropout/Cast�
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:���������Mn@2
dropout/dropout/Mul_1�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Ddropout/dropout/Mul_1:z:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������Mn�2
conv2d_1/BiasAdd|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������Mn�2
conv2d_1/Relu�
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$batch_normalization_1/ReadVariableOp�
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes	
:�*
dtype02(
&batch_normalization_1/ReadVariableOp_1�
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp�
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/Relu:activations:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2(
&batch_normalization_1/FusedBatchNormV3�
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue�
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1�
max_pooling2d_1/MaxPoolMaxPool*batch_normalization_1/FusedBatchNormV3:y:0*0
_output_shapes
:���������&7�*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/dropout/Const�
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:���������&7�2
dropout_1/dropout/Mul�
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:���������&7�*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform�
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2"
 dropout_1/dropout/GreaterEqual/y�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������&7�2 
dropout_1/dropout/GreaterEqual�
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������&7�2
dropout_1/dropout/Cast�
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:���������&7�2
dropout_1/dropout/Mul_1�
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices�
global_average_pooling2d/MeanMeandropout_1/dropout/Mul_1:z:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
global_average_pooling2d/Mean�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMul&global_average_pooling2d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense/BiasAdd�
IdentityIdentitydense/BiasAdd:output:0#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_19083

inputs
identity�
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
C
'__inference_dropout_layer_call_fn_20866

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������Mn@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_191462
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������Mn@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������Mn@:W S
/
_output_shapes
:���������Mn@
 
_user_specified_nameinputs
�
�
A__inference_conv2d_layer_call_and_return_conditional_losses_19107

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
k
A__inference_lambda_layer_call_and_return_conditional_losses_19790

inputs
inputs_1
identityV
subSubinputsinputs_1*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices�
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:���������2	
MaximumS
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:���������2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_batch_normalization_1_layer_call_fn_20976

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_189602
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,����������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
b
)__inference_dropout_1_layer_call_fn_21042

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������&7�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_192792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:���������&7�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������&7�22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������&7�
 
_user_specified_nameinputs
�
�
'__inference_model_1_layer_call_fn_19758
input_1
input_2!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:

unknown_14:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_197232
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
%__inference_model_layer_call_fn_19249
input_3!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_192182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_3
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_19182

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:���������Mn�: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:���������Mn�
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18932

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_19392

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�����������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
%__inference_dense_layer_call_fn_21061

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_192112
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
R
&__inference_lambda_layer_call_fn_20674
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
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_197032
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20774

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������@:@:@:@:@:*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�����������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
3__inference_batch_normalization_layer_call_fn_20844

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_193922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:�����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:�����������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20963

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:���������Mn�:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:���������Mn�2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:���������Mn�: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:���������Mn�
 
_user_specified_nameinputs
�	
m
A__inference_lambda_layer_call_and_return_conditional_losses_20668
inputs_0
inputs_1
identityX
subSubinputs_0inputs_1*
T0*(
_output_shapes
:����������2
subV
SquareSquaresub:z:0*
T0*(
_output_shapes
:����������2
Squarep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices�
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
Sum[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
	Maximum/yq
MaximumMaximumSum:output:0Maximum/y:output:0*
T0*'
_output_shapes
:���������2	
MaximumS
SqrtSqrtMaximum:z:0*
T0*'
_output_shapes
:���������2
Sqrt\
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:����������:����������:R N
(
_output_shapes
:����������
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:����������
"
_user_specified_name
inputs/1
�
�
B__inference_model_1_layer_call_and_return_conditional_losses_20017
input_1
input_2%
model_19966:@
model_19968:@
model_19970:@
model_19972:@
model_19974:@
model_19976:@&
model_19978:@�
model_19980:	�
model_19982:	�
model_19984:	�
model_19986:	�
model_19988:	�
model_19990:
��
model_19992:	�
dense_1_20011:
dense_1_20013:
identity��dense_1/StatefulPartitionedCall�model/StatefulPartitionedCall�model/StatefulPartitionedCall_1�
model/StatefulPartitionedCallStatefulPartitionedCallinput_1model_19966model_19968model_19970model_19972model_19974model_19976model_19978model_19980model_19982model_19984model_19986model_19988model_19990model_19992*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_192182
model/StatefulPartitionedCall�
model/StatefulPartitionedCall_1StatefulPartitionedCallinput_2model_19966model_19968model_19970model_19972model_19974model_19976model_19978model_19980model_19982model_19984model_19986model_19988model_19990model_19992*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_192182!
model/StatefulPartitionedCall_1�
lambda/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0(model/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_lambda_layer_call_and_return_conditional_losses_197032
lambda/PartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_1_20011dense_1_20013*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_197162!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^model/StatefulPartitionedCall ^model/StatefulPartitionedCall_1*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:�����������:�����������: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model/StatefulPartitionedCall_1model/StatefulPartitionedCall_1:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������
E
input_2:
serving_default_input_2:0�����������;
dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�~
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"�{
_tf_keras_network�{{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense", 0, 0]]}, "name": "model", "inbound_nodes": [[["input_1", 0, 0, {}]], [["input_2", 0, 0, {}]]]}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABAAAAAUAAABDAAAAc0QAAAB8AC8CfQF9AnQAagFqAnQAagFqA3wBfAIYAIMBZAFk\nAmQDjQN9A3QAagFqBHQAagFqBXwDdABqBmoHagiDAIMCgwFTACkETukBAAAAVCkC2gRheGlz2ghr\nZWVwZGltcykJ2gJ0ZtoEbWF0aNoKcmVkdWNlX3N1bdoGc3F1YXJl2gRzcXJ02gdtYXhpbXVt2gVr\nZXJhc9oHYmFja2VuZNoHZXBzaWxvbikEWgV2ZWN0c9oBeNoBeVoKc3VtX3NxdWFyZakAcg8AAAD6\nHzxpcHl0aG9uLWlucHV0LTEyLTVkMjU2ZmVkMGU5ZD7aEmV1Y2xpZGVhbl9kaXN0YW5jZQEAAABz\nBgAAAAABCAEeAQ==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda", "inbound_nodes": [[["model", 1, 0, {}], ["model", 2, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["lambda", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "shared_object_id": 32, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 155, 220, 1]}, {"class_name": "TensorShape", "items": [null, 155, 220, 1]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 155, 220, 1]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 155, 220, 1]}, "float32", "input_2"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense", 0, 0]]}, "name": "model", "inbound_nodes": [[["input_1", 0, 0, {}]], [["input_2", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABAAAAAUAAABDAAAAc0QAAAB8AC8CfQF9AnQAagFqAnQAagFqA3wBfAIYAIMBZAFk\nAmQDjQN9A3QAagFqBHQAagFqBXwDdABqBmoHagiDAIMCgwFTACkETukBAAAAVCkC2gRheGlz2ghr\nZWVwZGltcykJ2gJ0ZtoEbWF0aNoKcmVkdWNlX3N1bdoGc3F1YXJl2gRzcXJ02gdtYXhpbXVt2gVr\nZXJhc9oHYmFja2VuZNoHZXBzaWxvbikEWgV2ZWN0c9oBeNoBeVoKc3VtX3NxdWFyZakAcg8AAAD6\nHzxpcHl0aG9uLWlucHV0LTEyLTVkMjU2ZmVkMGU5ZD7aEmV1Y2xpZGVhbl9kaXN0YW5jZQEAAABz\nBgAAAAABCAEeAQ==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "name": "lambda", "inbound_nodes": [[["model", 1, 0, {}], ["model", 2, 0, {}]]], "shared_object_id": 28}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["lambda", 0, 0, {}]]], "shared_object_id": 31}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}, "training_config": {"loss": "contrastive_loss", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 35}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.8999999761581421, "epsilon": 1e-08, "centered": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
�\
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
layer-8
layer-9
layer_with_weights-4
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�Y
_tf_keras_network�Y{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense", 0, 0]]}, "inbound_nodes": [[["input_1", 0, 0, {}]], [["input_2", 0, 0, {}]]], "shared_object_id": 27, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 155, 220, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 155, 220, 1]}, "float32", "input_3"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": [], "shared_object_id": 2}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv2d", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]], "shared_object_id": 26}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense", 0, 0]]}}}
�
regularization_losses
	variables
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "lambda", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAABAAAAAUAAABDAAAAc0QAAAB8AC8CfQF9AnQAagFqAnQAagFqA3wBfAIYAIMBZAFk\nAmQDjQN9A3QAagFqBHQAagFqBXwDdABqBmoHagiDAIMCgwFTACkETukBAAAAVCkC2gRheGlz2ghr\nZWVwZGltcykJ2gJ0ZtoEbWF0aNoKcmVkdWNlX3N1bdoGc3F1YXJl2gRzcXJ02gdtYXhpbXVt2gVr\nZXJhc9oHYmFja2VuZNoHZXBzaWxvbikEWgV2ZWN0c9oBeNoBeVoKc3VtX3NxdWFyZakAcg8AAAD6\nHzxpcHl0aG9uLWlucHV0LTEyLTVkMjU2ZmVkMGU5ZD7aEmV1Y2xpZGVhbl9kaXN0YW5jZQEAAABz\nBgAAAAABCAEeAQ==\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "inbound_nodes": [[["model", 1, 0, {}], ["model", 2, 0, {}]]], "shared_object_id": 28}
�

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["lambda", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
�
%iter
	&decay
'learning_rate
(momentum
)rho
rms�
 rms�
*rms�
+rms�
,rms�
-rms�
0rms�
1rms�
2rms�
3rms�
6rms�
7rms�momentum� momentum�*momentum�+momentum�,momentum�-momentum�0momentum�1momentum�2momentum�3momentum�6momentum�7momentum�"
	optimizer
�
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
14
 15"
trackable_list_wrapper
v
*0
+1
,2
-3
04
15
26
37
68
79
10
 11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
8non_trainable_variables

9layers
:layer_regularization_losses
;metrics
	variables
trainable_variables
<layer_metrics
	regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 155, 220, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
�


*kernel
+bias
=regularization_losses
>	variables
?trainable_variables
@	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_3", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 155, 220, 1]}}
�

Aaxis
	,gamma
-beta
.moving_mean
/moving_variance
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 155, 220, 64]}}
�
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 40}}
�
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]], "shared_object_id": 12}
�

0kernel
1bias
Nregularization_losses
O	variables
Ptrainable_variables
Q	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77, 110, 64]}}
�

Raxis
	2gamma
3beta
4moving_mean
5moving_variance
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_1", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 256}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 77, 110, 256]}}
�
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
�
[regularization_losses
\	variables
]trainable_variables
^	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]], "shared_object_id": 22}
�
_regularization_losses
`	variables
atrainable_variables
b	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "global_average_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["dropout_1", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 44}}
�	

6kernel
7bias
cregularization_losses
d	variables
etrainable_variables
f	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
�
*0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713"
trackable_list_wrapper
f
*0
+1
,2
-3
04
15
26
37
68
79"
trackable_list_wrapper
 "
trackable_list_wrapper
�
gnon_trainable_variables

hlayers
ilayer_regularization_losses
jmetrics
	variables
trainable_variables
klayer_metrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nlayer_regularization_losses
regularization_losses
	variables
trainable_variables
olayer_metrics
pmetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
�
qnon_trainable_variables

rlayers
slayer_regularization_losses
!regularization_losses
"	variables
#trainable_variables
tlayer_metrics
umetrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
':%@2conv2d/kernel
:@2conv2d/bias
':%@2batch_normalization/gamma
&:$@2batch_normalization/beta
/:-@ (2batch_normalization/moving_mean
3:1@ (2#batch_normalization/moving_variance
*:(@�2conv2d_1/kernel
:�2conv2d_1/bias
*:(�2batch_normalization_1/gamma
):'�2batch_normalization_1/beta
2:0� (2!batch_normalization_1/moving_mean
6:4� (2%batch_normalization_1/moving_variance
 :
��2dense/kernel
:�2
dense/bias
<
.0
/1
42
53"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zlayer_regularization_losses
=regularization_losses
>	variables
?trainable_variables
{layer_metrics
|metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
�
}non_trainable_variables

~layers
layer_regularization_losses
Bregularization_losses
C	variables
Dtrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Fregularization_losses
G	variables
Htrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Jregularization_losses
K	variables
Ltrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Nregularization_losses
O	variables
Ptrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
20
31
42
53"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Sregularization_losses
T	variables
Utrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
Wregularization_losses
X	variables
Ytrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
[regularization_losses
\	variables
]trainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
_regularization_losses
`	variables
atrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
�
�non_trainable_variables
�layers
 �layer_regularization_losses
cregularization_losses
d	variables
etrainable_variables
�layer_metrics
�metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
<
.0
/1
42
53"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
8
9
10"
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
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 46}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 35}
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
.
.0
/1"
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
.
40
51"
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
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
*:(2RMSprop/dense_1/kernel/rms
$:"2RMSprop/dense_1/bias/rms
1:/@2RMSprop/conv2d/kernel/rms
#:!@2RMSprop/conv2d/bias/rms
1:/@2%RMSprop/batch_normalization/gamma/rms
0:.@2$RMSprop/batch_normalization/beta/rms
4:2@�2RMSprop/conv2d_1/kernel/rms
&:$�2RMSprop/conv2d_1/bias/rms
4:2�2'RMSprop/batch_normalization_1/gamma/rms
3:1�2&RMSprop/batch_normalization_1/beta/rms
*:(
��2RMSprop/dense/kernel/rms
#:!�2RMSprop/dense/bias/rms
/:-2RMSprop/dense_1/kernel/momentum
):'2RMSprop/dense_1/bias/momentum
6:4@2RMSprop/conv2d/kernel/momentum
(:&@2RMSprop/conv2d/bias/momentum
6:4@2*RMSprop/batch_normalization/gamma/momentum
5:3@2)RMSprop/batch_normalization/beta/momentum
9:7@�2 RMSprop/conv2d_1/kernel/momentum
+:)�2RMSprop/conv2d_1/bias/momentum
9:7�2,RMSprop/batch_normalization_1/gamma/momentum
8:6�2+RMSprop/batch_normalization_1/beta/momentum
/:-
��2RMSprop/dense/kernel/momentum
(:&�2RMSprop/dense/bias/momentum
�2�
B__inference_model_1_layer_call_and_return_conditional_losses_20231
B__inference_model_1_layer_call_and_return_conditional_losses_20372
B__inference_model_1_layer_call_and_return_conditional_losses_20017
B__inference_model_1_layer_call_and_return_conditional_losses_20072�
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
�2�
'__inference_model_1_layer_call_fn_19758
'__inference_model_1_layer_call_fn_20410
'__inference_model_1_layer_call_fn_20448
'__inference_model_1_layer_call_fn_19962�
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
�2�
 __inference__wrapped_model_18800�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *b�_
]�Z
+�(
input_1�����������
+�(
input_2�����������
�2�
@__inference_model_layer_call_and_return_conditional_losses_20506
@__inference_model_layer_call_and_return_conditional_losses_20578
@__inference_model_layer_call_and_return_conditional_losses_19596
@__inference_model_layer_call_and_return_conditional_losses_19638�
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
�2�
%__inference_model_layer_call_fn_19249
%__inference_model_layer_call_fn_20611
%__inference_model_layer_call_fn_20644
%__inference_model_layer_call_fn_19554�
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
�2�
A__inference_lambda_layer_call_and_return_conditional_losses_20656
A__inference_lambda_layer_call_and_return_conditional_losses_20668�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_lambda_layer_call_fn_20674
&__inference_lambda_layer_call_fn_20680�
���
FullArgSpec1
args)�&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_dense_1_layer_call_and_return_conditional_losses_20691�
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
'__inference_dense_1_layer_call_fn_20700�
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
�B�
#__inference_signature_wrapper_20118input_1input_2"�
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
�2�
A__inference_conv2d_layer_call_and_return_conditional_losses_20711�
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
&__inference_conv2d_layer_call_fn_20720�
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
�2�
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20738
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20756
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20774
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20792�
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
�2�
3__inference_batch_normalization_layer_call_fn_20805
3__inference_batch_normalization_layer_call_fn_20818
3__inference_batch_normalization_layer_call_fn_20831
3__inference_batch_normalization_layer_call_fn_20844�
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
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18932�
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
annotations� *@�=
;�84������������������������������������
�2�
-__inference_max_pooling2d_layer_call_fn_18938�
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
annotations� *@�=
;�84������������������������������������
�2�
B__inference_dropout_layer_call_and_return_conditional_losses_20849
B__inference_dropout_layer_call_and_return_conditional_losses_20861�
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
'__inference_dropout_layer_call_fn_20866
'__inference_dropout_layer_call_fn_20871�
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
�2�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20882�
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
(__inference_conv2d_1_layer_call_fn_20891�
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
�2�
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20909
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20927
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20945
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20963�
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
�2�
5__inference_batch_normalization_1_layer_call_fn_20976
5__inference_batch_normalization_1_layer_call_fn_20989
5__inference_batch_normalization_1_layer_call_fn_21002
5__inference_batch_normalization_1_layer_call_fn_21015�
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
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19070�
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
annotations� *@�=
;�84������������������������������������
�2�
/__inference_max_pooling2d_1_layer_call_fn_19076�
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
annotations� *@�=
;�84������������������������������������
�2�
D__inference_dropout_1_layer_call_and_return_conditional_losses_21020
D__inference_dropout_1_layer_call_and_return_conditional_losses_21032�
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
)__inference_dropout_1_layer_call_fn_21037
)__inference_dropout_1_layer_call_fn_21042�
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
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_19083�
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
annotations� *@�=
;�84������������������������������������
�2�
8__inference_global_average_pooling2d_layer_call_fn_19089�
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
annotations� *@�=
;�84������������������������������������
�2�
@__inference_dense_layer_call_and_return_conditional_losses_21052�
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
%__inference_dense_layer_call_fn_21061�
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
 �
 __inference__wrapped_model_18800�*+,-./01234567 l�i
b�_
]�Z
+�(
input_1�����������
+�(
input_2�����������
� "1�.
,
dense_1!�
dense_1����������
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20909�2345N�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20927�2345N�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20945t2345<�9
2�/
)�&
inputs���������Mn�
p 
� ".�+
$�!
0���������Mn�
� �
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_20963t2345<�9
2�/
)�&
inputs���������Mn�
p
� ".�+
$�!
0���������Mn�
� �
5__inference_batch_normalization_1_layer_call_fn_20976�2345N�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
5__inference_batch_normalization_1_layer_call_fn_20989�2345N�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
5__inference_batch_normalization_1_layer_call_fn_21002g2345<�9
2�/
)�&
inputs���������Mn�
p 
� "!����������Mn��
5__inference_batch_normalization_1_layer_call_fn_21015g2345<�9
2�/
)�&
inputs���������Mn�
p
� "!����������Mn��
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20738�,-./M�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20756�,-./M�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20774v,-./=�:
3�0
*�'
inputs�����������@
p 
� "/�,
%�"
0�����������@
� �
N__inference_batch_normalization_layer_call_and_return_conditional_losses_20792v,-./=�:
3�0
*�'
inputs�����������@
p
� "/�,
%�"
0�����������@
� �
3__inference_batch_normalization_layer_call_fn_20805�,-./M�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
3__inference_batch_normalization_layer_call_fn_20818�,-./M�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
3__inference_batch_normalization_layer_call_fn_20831i,-./=�:
3�0
*�'
inputs�����������@
p 
� ""������������@�
3__inference_batch_normalization_layer_call_fn_20844i,-./=�:
3�0
*�'
inputs�����������@
p
� ""������������@�
C__inference_conv2d_1_layer_call_and_return_conditional_losses_20882m017�4
-�*
(�%
inputs���������Mn@
� ".�+
$�!
0���������Mn�
� �
(__inference_conv2d_1_layer_call_fn_20891`017�4
-�*
(�%
inputs���������Mn@
� "!����������Mn��
A__inference_conv2d_layer_call_and_return_conditional_losses_20711p*+9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������@
� �
&__inference_conv2d_layer_call_fn_20720c*+9�6
/�,
*�'
inputs�����������
� ""������������@�
B__inference_dense_1_layer_call_and_return_conditional_losses_20691\ /�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
'__inference_dense_1_layer_call_fn_20700O /�,
%�"
 �
inputs���������
� "�����������
@__inference_dense_layer_call_and_return_conditional_losses_21052^670�-
&�#
!�
inputs����������
� "&�#
�
0����������
� z
%__inference_dense_layer_call_fn_21061Q670�-
&�#
!�
inputs����������
� "������������
D__inference_dropout_1_layer_call_and_return_conditional_losses_21020n<�9
2�/
)�&
inputs���������&7�
p 
� ".�+
$�!
0���������&7�
� �
D__inference_dropout_1_layer_call_and_return_conditional_losses_21032n<�9
2�/
)�&
inputs���������&7�
p
� ".�+
$�!
0���������&7�
� �
)__inference_dropout_1_layer_call_fn_21037a<�9
2�/
)�&
inputs���������&7�
p 
� "!����������&7��
)__inference_dropout_1_layer_call_fn_21042a<�9
2�/
)�&
inputs���������&7�
p
� "!����������&7��
B__inference_dropout_layer_call_and_return_conditional_losses_20849l;�8
1�.
(�%
inputs���������Mn@
p 
� "-�*
#� 
0���������Mn@
� �
B__inference_dropout_layer_call_and_return_conditional_losses_20861l;�8
1�.
(�%
inputs���������Mn@
p
� "-�*
#� 
0���������Mn@
� �
'__inference_dropout_layer_call_fn_20866_;�8
1�.
(�%
inputs���������Mn@
p 
� " ����������Mn@�
'__inference_dropout_layer_call_fn_20871_;�8
1�.
(�%
inputs���������Mn@
p
� " ����������Mn@�
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_19083�R�O
H�E
C�@
inputs4������������������������������������
� ".�+
$�!
0������������������
� �
8__inference_global_average_pooling2d_layer_call_fn_19089wR�O
H�E
C�@
inputs4������������������������������������
� "!��������������������
A__inference_lambda_layer_call_and_return_conditional_losses_20656�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p 
� "%�"
�
0���������
� �
A__inference_lambda_layer_call_and_return_conditional_losses_20668�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p
� "%�"
�
0���������
� �
&__inference_lambda_layer_call_fn_20674�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p 
� "�����������
&__inference_lambda_layer_call_fn_20680�d�a
Z�W
M�J
#� 
inputs/0����������
#� 
inputs/1����������

 
p
� "�����������
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_19070�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
/__inference_max_pooling2d_1_layer_call_fn_19076�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_18932�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_max_pooling2d_layer_call_fn_18938�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
B__inference_model_1_layer_call_and_return_conditional_losses_20017�*+,-./01234567 t�q
j�g
]�Z
+�(
input_1�����������
+�(
input_2�����������
p 

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_20072�*+,-./01234567 t�q
j�g
]�Z
+�(
input_1�����������
+�(
input_2�����������
p

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_20231�*+,-./01234567 v�s
l�i
_�\
,�)
inputs/0�����������
,�)
inputs/1�����������
p 

 
� "%�"
�
0���������
� �
B__inference_model_1_layer_call_and_return_conditional_losses_20372�*+,-./01234567 v�s
l�i
_�\
,�)
inputs/0�����������
,�)
inputs/1�����������
p

 
� "%�"
�
0���������
� �
'__inference_model_1_layer_call_fn_19758�*+,-./01234567 t�q
j�g
]�Z
+�(
input_1�����������
+�(
input_2�����������
p 

 
� "�����������
'__inference_model_1_layer_call_fn_19962�*+,-./01234567 t�q
j�g
]�Z
+�(
input_1�����������
+�(
input_2�����������
p

 
� "�����������
'__inference_model_1_layer_call_fn_20410�*+,-./01234567 v�s
l�i
_�\
,�)
inputs/0�����������
,�)
inputs/1�����������
p 

 
� "�����������
'__inference_model_1_layer_call_fn_20448�*+,-./01234567 v�s
l�i
_�\
,�)
inputs/0�����������
,�)
inputs/1�����������
p

 
� "�����������
@__inference_model_layer_call_and_return_conditional_losses_19596|*+,-./01234567B�?
8�5
+�(
input_3�����������
p 

 
� "&�#
�
0����������
� �
@__inference_model_layer_call_and_return_conditional_losses_19638|*+,-./01234567B�?
8�5
+�(
input_3�����������
p

 
� "&�#
�
0����������
� �
@__inference_model_layer_call_and_return_conditional_losses_20506{*+,-./01234567A�>
7�4
*�'
inputs�����������
p 

 
� "&�#
�
0����������
� �
@__inference_model_layer_call_and_return_conditional_losses_20578{*+,-./01234567A�>
7�4
*�'
inputs�����������
p

 
� "&�#
�
0����������
� �
%__inference_model_layer_call_fn_19249o*+,-./01234567B�?
8�5
+�(
input_3�����������
p 

 
� "������������
%__inference_model_layer_call_fn_19554o*+,-./01234567B�?
8�5
+�(
input_3�����������
p

 
� "������������
%__inference_model_layer_call_fn_20611n*+,-./01234567A�>
7�4
*�'
inputs�����������
p 

 
� "������������
%__inference_model_layer_call_fn_20644n*+,-./01234567A�>
7�4
*�'
inputs�����������
p

 
� "������������
#__inference_signature_wrapper_20118�*+,-./01234567 }�z
� 
s�p
6
input_1+�(
input_1�����������
6
input_2+�(
input_2�����������"1�.
,
dense_1!�
dense_1���������