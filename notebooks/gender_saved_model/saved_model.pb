╓═
ч╗
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-2-g0b15fdfcb3f8л╚
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
д
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_3/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
д
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_3/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
п
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_3/kernel/*
dtype0*
shape:	А*&
shared_nameAdam/v/dense_3/kernel
А
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	А*
dtype0
п
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_3/kernel/*
dtype0*
shape:	А*&
shared_nameAdam/m/dense_3/kernel
А
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	А*
dtype0
е
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_2/bias/*
dtype0*
shape:А*$
shared_nameAdam/v/dense_2/bias
x
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes	
:А*
dtype0
е
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_2/bias/*
dtype0*
shape:А*$
shared_nameAdam/m/dense_2/bias
x
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes	
:А*
dtype0
░
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_2/kernel/*
dtype0*
shape:
АHА*&
shared_nameAdam/v/dense_2/kernel
Б
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel* 
_output_shapes
:
АHА*
dtype0
░
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_2/kernel/*
dtype0*
shape:
АHА*&
shared_nameAdam/m/dense_2/kernel
Б
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel* 
_output_shapes
:
АHА*
dtype0
и
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_7/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_7/bias
z
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_7/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_7/bias
z
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes	
:А*
dtype0
╗
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_7/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_7/kernel
Л
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*(
_output_shapes
:АА*
dtype0
╗
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_7/kernel/*
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_7/kernel
Л
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*(
_output_shapes
:АА*
dtype0
и
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_6/bias/*
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_6/bias
z
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes	
:А*
dtype0
и
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_6/bias/*
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_6/bias
z
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes	
:А*
dtype0
║
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_6/kernel/*
dtype0*
shape:@А*'
shared_nameAdam/v/conv2d_6/kernel
К
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*'
_output_shapes
:@А*
dtype0
║
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_6/kernel/*
dtype0*
shape:@А*'
shared_nameAdam/m/conv2d_6/kernel
К
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*'
_output_shapes
:@А*
dtype0
з
Adam/v/conv2d_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_5/bias/*
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_5/bias
y
(Adam/v/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/bias*
_output_shapes
:@*
dtype0
з
Adam/m/conv2d_5/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_5/bias/*
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_5/bias
y
(Adam/m/conv2d_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/bias*
_output_shapes
:@*
dtype0
╣
Adam/v/conv2d_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_5/kernel/*
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_5/kernel
Й
*Adam/v/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_5/kernel*&
_output_shapes
: @*
dtype0
╣
Adam/m/conv2d_5/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_5/kernel/*
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_5/kernel
Й
*Adam/m/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_5/kernel*&
_output_shapes
: @*
dtype0
з
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv2d_4/bias/*
dtype0*
shape: *%
shared_nameAdam/v/conv2d_4/bias
y
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes
: *
dtype0
з
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv2d_4/bias/*
dtype0*
shape: *%
shared_nameAdam/m/conv2d_4/bias
y
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes
: *
dtype0
╣
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv2d_4/kernel/*
dtype0*
shape: *'
shared_nameAdam/v/conv2d_4/kernel
Й
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*&
_output_shapes
: *
dtype0
╣
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv2d_4/kernel/*
dtype0*
shape: *'
shared_nameAdam/m/conv2d_4/kernel
Й
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*&
_output_shapes
: *
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
П
dense_3/biasVarHandleOp*
_output_shapes
: *

debug_namedense_3/bias/*
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
Ъ
dense_3/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_3/kernel/*
dtype0*
shape:	А*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	А*
dtype0
Р
dense_2/biasVarHandleOp*
_output_shapes
: *

debug_namedense_2/bias/*
dtype0*
shape:А*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:А*
dtype0
Ы
dense_2/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_2/kernel/*
dtype0*
shape:
АHА*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
АHА*
dtype0
У
conv2d_7/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_7/bias/*
dtype0*
shape:А*
shared_nameconv2d_7/bias
l
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes	
:А*
dtype0
ж
conv2d_7/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_7/kernel/*
dtype0*
shape:АА* 
shared_nameconv2d_7/kernel
}
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*(
_output_shapes
:АА*
dtype0
У
conv2d_6/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_6/bias/*
dtype0*
shape:А*
shared_nameconv2d_6/bias
l
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes	
:А*
dtype0
е
conv2d_6/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_6/kernel/*
dtype0*
shape:@А* 
shared_nameconv2d_6/kernel
|
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*'
_output_shapes
:@А*
dtype0
Т
conv2d_5/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_5/bias/*
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
д
conv2d_5/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_5/kernel/*
dtype0*
shape: @* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
: @*
dtype0
Т
conv2d_4/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_4/bias/*
dtype0*
shape: *
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
: *
dtype0
д
conv2d_4/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv2d_4/kernel/*
dtype0*
shape: * 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: *
dtype0
К
serving_default_input_1Placeholder*/
_output_shapes
:         dd*
dtype0*$
shape:         dd
Й
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_130297

NoOpNoOp
█К
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ХК
valueККBЖК B■Й
О
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer-10
layer-11
layer-12
layer_with_weights-3
layer-13
layer-14
layer-15
layer-16
layer-17
layer_with_weights-4
layer-18
layer-19
layer_with_weights-5
layer-20
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
╚
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op*
е
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator* 
О
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
О
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
╚
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op*
е
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
K_random_generator* 
О
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses* 
О
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
╚
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op*
е
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
g_random_generator* 
О
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses* 
О
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
╚
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias
 |_jit_compiled_convolution_op*
й
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Г_random_generator* 
Ф
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses* 
Ф
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses* 
Ф
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses* 
о
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ьkernel
	Эbias*
м
Ю	variables
Яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses
д_random_generator* 
о
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лkernel
	мbias*
^
&0
'1
B2
C3
^4
_5
z6
{7
Ь8
Э9
л10
м11*
^
&0
'1
B2
C3
^4
_5
z6
{7
Ь8
Э9
л10
м11*
"
н0
о1
п2
░3* 
╡
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

╢trace_0
╖trace_1* 

╕trace_0
╣trace_1* 
* 
И
║
_variables
╗_iterations
╝_learning_rate
╜_index_dict
╛
_momentums
┐_velocities
└_update_step_xla*
* 

┴serving_default* 

&0
'1*

&0
'1*


н0* 
Ш
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

╟trace_0* 

╚trace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses* 

╬trace_0
╧trace_1* 

╨trace_0
╤trace_1* 
* 
* 
* 
* 
Ц
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

╫trace_0* 

╪trace_0* 
* 
* 
* 
Ц
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

▐trace_0* 

▀trace_0* 

B0
C1*

B0
C1*


о0* 
Ш
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

хtrace_0* 

цtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

ьtrace_0
эtrace_1* 

юtrace_0
яtrace_1* 
* 
* 
* 
* 
Ц
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 

їtrace_0* 

Ўtrace_0* 
* 
* 
* 
Ц
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

№trace_0* 

¤trace_0* 

^0
_1*

^0
_1*


п0* 
Ш
■non_trainable_variables
 layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

Гtrace_0* 

Дtrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

Кtrace_0
Лtrace_1* 

Мtrace_0
Нtrace_1* 
* 
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
* 
* 
* 
Ц
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 

z0
{1*

z0
{1*


░0* 
Ш
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Щ
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses* 

иtrace_0
йtrace_1* 

кtrace_0
лtrace_1* 
* 
* 
* 
* 
Ь
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 

▒trace_0* 

▓trace_0* 
* 
* 
* 
Ь
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses* 

╕trace_0* 

╣trace_0* 
* 
* 
* 
Ь
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses* 

┐trace_0* 

└trace_0* 

Ь0
Э1*

Ь0
Э1*
* 
Ю
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses*

╞trace_0* 

╟trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
Ю	variables
Яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses* 

═trace_0
╬trace_1* 

╧trace_0
╨trace_1* 
* 

л0
м1*

л0
м1*
* 
Ю
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*

╓trace_0* 

╫trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

╪trace_0* 

┘trace_0* 

┌trace_0* 

█trace_0* 
* 
в
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
9
10
11
12
13
14
15
16
17
18
19
20*

▄0
▌1*
* 
* 
* 
* 
* 
* 
█
╗0
▐1
▀2
р3
с4
т5
у6
ф7
х8
ц9
ч10
ш11
щ12
ъ13
ы14
ь15
э16
ю17
я18
Ё19
ё20
Є21
є22
Ї23
ї24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
▐0
р1
т2
ф3
ц4
ш5
ъ6
ь7
ю8
Ё9
Є10
Ї11*
f
▀0
с1
у2
х3
ч4
щ5
ы6
э7
я8
ё9
є10
ї11*
м
Ўtrace_0
ўtrace_1
°trace_2
∙trace_3
·trace_4
√trace_5
№trace_6
¤trace_7
■trace_8
 trace_9
Аtrace_10
Бtrace_11* 
* 
* 
* 
* 


н0* 
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


о0* 
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


п0* 
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


░0* 
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
В	variables
Г	keras_api

Дtotal

Еcount*
M
Ж	variables
З	keras_api

Иtotal

Йcount
К
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_4/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_4/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_4/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_4/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_5/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_5/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_5/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_5/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_6/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_6/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_6/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_6/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_7/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_7/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_7/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_7/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
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

Д0
Е1*

В	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

И0
Й1*

Ж	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▐
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcountConst*7
Tin0
.2,*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_131037
┘
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/conv2d_5/kernelAdam/v/conv2d_5/kernelAdam/m/conv2d_5/biasAdam/v/conv2d_5/biasAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcount*6
Tin/
-2+*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_131172║╚
╢	
╣
__inference_loss_fn_1_130747T
:conv2d_5_kernel_regularizer_l2loss_readvariableop_resource: @
identityИв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp┤
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_5_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: @*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_130513

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
єc
▓
A__inference_model_layer_call_and_return_conditional_losses_130062
input_1)
conv2d_4_129976: 
conv2d_4_129978: )
conv2d_5_129989: @
conv2d_5_129991:@*
conv2d_6_130002:@А
conv2d_6_130004:	А+
conv2d_7_130015:АА
conv2d_7_130017:	А"
dense_2_130029:
АHА
dense_2_130031:	А!
dense_3_130040:	А
dense_3_130042:
identityИв conv2d_4/StatefulPartitionedCallв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_5/StatefulPartitionedCallв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_6/StatefulPartitionedCallв1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_7/StatefulPartitionedCallв1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCall№
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_4_129976conv2d_4_129978*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_129761ш
dropout_5/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_129985ч
activation_4/PartitionedCallPartitionedCall"dropout_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_129784Ё
max_pooling2d_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_129710Э
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_129989conv2d_5_129991*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_129800ш
dropout_6/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_129998ч
activation_5/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_129823Ё
max_pooling2d_5/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_129720Ю
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_6_130002conv2d_6_130004*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_129839щ
dropout_7/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_130011ш
activation_6/PartitionedCallPartitionedCall"dropout_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_129862ё
max_pooling2d_6/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_129730Ю
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_130015conv2d_7_130017*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_129878щ
dropout_8/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_130024ш
activation_7/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_129901ё
max_pooling2d_7/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_129740р
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_129909М
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_130029dense_2_130031*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_129921р
dropout_9/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_130038Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_3_130040dense_3_130042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_129950Й
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_4_129976*&
_output_shapes
: *
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Й
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_5_129989*&
_output_shapes
: @*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: К
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_6_130002*'
_output_shapes
:@А*
dtype0И
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_7_130015*(
_output_shapes
:АА*
dtype0И
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┬
NoOpNoOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         dd: : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:&"
 
_user_specified_name130042:&"
 
_user_specified_name130040:&
"
 
_user_specified_name130031:&	"
 
_user_specified_name130029:&"
 
_user_specified_name130017:&"
 
_user_specified_name130015:&"
 
_user_specified_name130004:&"
 
_user_specified_name130002:&"
 
_user_specified_name129991:&"
 
_user_specified_name129989:&"
 
_user_specified_name129978:&"
 
_user_specified_name129976:X T
/
_output_shapes
:         dd
!
_user_specified_name	input_1
╙
X
#__inference__update_step_xla_130338
gradient#
variable:@А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:@А: *
	_noinline(:($
"
_user_specified_name
variable:Q M
'
_output_shapes
:@А
"
_user_specified_name
gradient
м
K
#__inference__update_step_xla_130373
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
╨
W
#__inference__update_step_xla_130328
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: @
"
_user_specified_name
gradient
╗
L
0__inference_max_pooling2d_7_layer_call_fn_130648

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_129740Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╪

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_129856

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
№
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_130024

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ь
d
H__inference_activation_4_layer_call_and_return_conditional_losses_129784

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         dd b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         dd "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╔
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_130664

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АHY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         АH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_130363
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:А
"
_user_specified_name
gradient
а
б
)__inference_conv2d_7_layer_call_fn_130592

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_129878x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130588:&"
 
_user_specified_name130586:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╓
Y
#__inference__update_step_xla_130348
gradient$
variable:АА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*)
_input_shapes
:АА: *
	_noinline(:($
"
_user_specified_name
variable:R N
(
_output_shapes
:АА
"
_user_specified_name
gradient
а

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_129938

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Е┴
╠&
__inference__traced_save_131037
file_prefix@
&read_disablecopyonread_conv2d_4_kernel: 4
&read_1_disablecopyonread_conv2d_4_bias: B
(read_2_disablecopyonread_conv2d_5_kernel: @4
&read_3_disablecopyonread_conv2d_5_bias:@C
(read_4_disablecopyonread_conv2d_6_kernel:@А5
&read_5_disablecopyonread_conv2d_6_bias:	АD
(read_6_disablecopyonread_conv2d_7_kernel:АА5
&read_7_disablecopyonread_conv2d_7_bias:	А;
'read_8_disablecopyonread_dense_2_kernel:
АHА4
%read_9_disablecopyonread_dense_2_bias:	А;
(read_10_disablecopyonread_dense_3_kernel:	А4
&read_11_disablecopyonread_dense_3_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: J
0read_14_disablecopyonread_adam_m_conv2d_4_kernel: J
0read_15_disablecopyonread_adam_v_conv2d_4_kernel: <
.read_16_disablecopyonread_adam_m_conv2d_4_bias: <
.read_17_disablecopyonread_adam_v_conv2d_4_bias: J
0read_18_disablecopyonread_adam_m_conv2d_5_kernel: @J
0read_19_disablecopyonread_adam_v_conv2d_5_kernel: @<
.read_20_disablecopyonread_adam_m_conv2d_5_bias:@<
.read_21_disablecopyonread_adam_v_conv2d_5_bias:@K
0read_22_disablecopyonread_adam_m_conv2d_6_kernel:@АK
0read_23_disablecopyonread_adam_v_conv2d_6_kernel:@А=
.read_24_disablecopyonread_adam_m_conv2d_6_bias:	А=
.read_25_disablecopyonread_adam_v_conv2d_6_bias:	АL
0read_26_disablecopyonread_adam_m_conv2d_7_kernel:ААL
0read_27_disablecopyonread_adam_v_conv2d_7_kernel:АА=
.read_28_disablecopyonread_adam_m_conv2d_7_bias:	А=
.read_29_disablecopyonread_adam_v_conv2d_7_bias:	АC
/read_30_disablecopyonread_adam_m_dense_2_kernel:
АHАC
/read_31_disablecopyonread_adam_v_dense_2_kernel:
АHА<
-read_32_disablecopyonread_adam_m_dense_2_bias:	А<
-read_33_disablecopyonread_adam_v_dense_2_bias:	АB
/read_34_disablecopyonread_adam_m_dense_3_kernel:	АB
/read_35_disablecopyonread_adam_v_dense_3_kernel:	А;
-read_36_disablecopyonread_adam_m_dense_3_bias:;
-read_37_disablecopyonread_adam_v_dense_3_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const
identity_85ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 к
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_4_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 в
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_4_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 ░
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_5_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_5_bias"/device:CPU:0*
_output_shapes
 в
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_5_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_6_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0v

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аl

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*'
_output_shapes
:@Аz
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 г
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_6_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:А|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_7_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0x
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААz
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 г
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_7_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:А{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 й
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_2_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АHА*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АHАg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АHАy
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 в
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_2_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 л
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_dense_3_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 д
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_dense_3_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_14/DisableCopyOnReadDisableCopyOnRead0read_14_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ║
Read_14/ReadVariableOpReadVariableOp0read_14_disablecopyonread_adam_m_conv2d_4_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
: Е
Read_15/DisableCopyOnReadDisableCopyOnRead0read_15_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ║
Read_15/ReadVariableOpReadVariableOp0read_15_disablecopyonread_adam_v_conv2d_4_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
: Г
Read_16/DisableCopyOnReadDisableCopyOnRead.read_16_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 м
Read_16/ReadVariableOpReadVariableOp.read_16_disablecopyonread_adam_m_conv2d_4_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_17/DisableCopyOnReadDisableCopyOnRead.read_17_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 м
Read_17/ReadVariableOpReadVariableOp.read_17_disablecopyonread_adam_v_conv2d_4_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_18/DisableCopyOnReadDisableCopyOnRead0read_18_disablecopyonread_adam_m_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 ║
Read_18/ReadVariableOpReadVariableOp0read_18_disablecopyonread_adam_m_conv2d_5_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Е
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_v_conv2d_5_kernel"/device:CPU:0*
_output_shapes
 ║
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_v_conv2d_5_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Г
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_m_conv2d_5_bias"/device:CPU:0*
_output_shapes
 м
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_m_conv2d_5_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@Г
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_v_conv2d_5_bias"/device:CPU:0*
_output_shapes
 м
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_v_conv2d_5_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_conv2d_6_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АЕ
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_conv2d_6_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АГ
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 н
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_conv2d_6_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 н
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_conv2d_6_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_conv2d_7_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_conv2d_7_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 н
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_conv2d_7_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 н
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_conv2d_7_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 │
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_adam_m_dense_2_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АHА*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АHАg
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АHАД
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 │
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_v_dense_2_kernel^Read_31/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АHА*
dtype0q
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
АHАg
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0* 
_output_shapes
:
АHАВ
Read_32/DisableCopyOnReadDisableCopyOnRead-read_32_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 м
Read_32/ReadVariableOpReadVariableOp-read_32_disablecopyonread_adam_m_dense_2_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:АВ
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 м
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_v_dense_2_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_adam_m_dense_3_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	АД
Read_35/DisableCopyOnReadDisableCopyOnRead/read_35_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_35/ReadVariableOpReadVariableOp/read_35_disablecopyonread_adam_v_dense_3_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	АВ
Read_36/DisableCopyOnReadDisableCopyOnRead-read_36_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 л
Read_36/ReadVariableOpReadVariableOp-read_36_disablecopyonread_adam_m_dense_3_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_37/DisableCopyOnReadDisableCopyOnRead-read_37_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 л
Read_37/ReadVariableOpReadVariableOp-read_37_disablecopyonread_adam_v_dense_3_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: ┤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*▌
value╙B╨+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH├
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Щ	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: ╤
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_85Identity_85:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=+9

_output_shapes
: 

_user_specified_nameConst:%*!

_user_specified_namecount:%)!

_user_specified_nametotal:'(#
!
_user_specified_name	count_1:''#
!
_user_specified_name	total_1:3&/
-
_user_specified_nameAdam/v/dense_3/bias:3%/
-
_user_specified_nameAdam/m/dense_3/bias:5$1
/
_user_specified_nameAdam/v/dense_3/kernel:5#1
/
_user_specified_nameAdam/m/dense_3/kernel:3"/
-
_user_specified_nameAdam/v/dense_2/bias:3!/
-
_user_specified_nameAdam/m/dense_2/bias:5 1
/
_user_specified_nameAdam/v/dense_2/kernel:51
/
_user_specified_nameAdam/m/dense_2/kernel:40
.
_user_specified_nameAdam/v/conv2d_7/bias:40
.
_user_specified_nameAdam/m/conv2d_7/bias:62
0
_user_specified_nameAdam/v/conv2d_7/kernel:62
0
_user_specified_nameAdam/m/conv2d_7/kernel:40
.
_user_specified_nameAdam/v/conv2d_6/bias:40
.
_user_specified_nameAdam/m/conv2d_6/bias:62
0
_user_specified_nameAdam/v/conv2d_6/kernel:62
0
_user_specified_nameAdam/m/conv2d_6/kernel:40
.
_user_specified_nameAdam/v/conv2d_5/bias:40
.
_user_specified_nameAdam/m/conv2d_5/bias:62
0
_user_specified_nameAdam/v/conv2d_5/kernel:62
0
_user_specified_nameAdam/m/conv2d_5/kernel:40
.
_user_specified_nameAdam/v/conv2d_4/bias:40
.
_user_specified_nameAdam/m/conv2d_4/bias:62
0
_user_specified_nameAdam/v/conv2d_4/kernel:62
0
_user_specified_nameAdam/m/conv2d_4/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,
(
&
_user_specified_namedense_2/bias:.	*
(
_user_specified_namedense_2/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
У
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_129740

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
°
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_129998

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         22@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         22@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
ж
F
*__inference_dropout_9_layer_call_fn_130694

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_130038a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
№
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_130563

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤

d
E__inference_dropout_5_layer_call_and_return_conditional_losses_129778

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         dd Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         dd *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         dd T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         dd i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         dd "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
Ё
d
H__inference_activation_6_layer_call_and_return_conditional_losses_129862

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ё
d
H__inference_activation_7_layer_call_and_return_conditional_losses_130643

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╪

d
E__inference_dropout_7_layer_call_and_return_conditional_losses_130558

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
═

ї
C__inference_dense_3_layer_call_and_return_conditional_losses_130731

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_130653

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_130343
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:А
"
_user_specified_name
gradient
Э
а
)__inference_conv2d_6_layer_call_fn_130522

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_129839x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130518:&"
 
_user_specified_name130516:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┬
F
*__inference_dropout_6_layer_call_fn_130476

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_129998h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         22@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
°
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_130423

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         dd c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         dd "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
▄
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_130711

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ь
d
H__inference_activation_5_layer_call_and_return_conditional_losses_129823

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         22@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         22@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
╠
I
-__inference_activation_6_layer_call_fn_130568

inputs
identity┐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_129862i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╞
F
*__inference_dropout_7_layer_call_fn_130546

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_130011i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤

d
E__inference_dropout_5_layer_call_and_return_conditional_losses_130418

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         dd Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         dd *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         dd T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         dd i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         dd "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╓

ў
C__inference_dense_2_layer_call_and_return_conditional_losses_130684

inputs2
matmul_readvariableop_resource:
АHА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
№
c
E__inference_dropout_7_layer_call_and_return_conditional_losses_130011

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╕	
║
__inference_loss_fn_2_130755U
:conv2d_6_kernel_regularizer_l2loss_readvariableop_resource:@А
identityИв1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp╡
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_6_kernel_regularizer_l2loss_readvariableop_resource*'
_output_shapes
:@А*
dtype0И
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_6/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
╨
W
#__inference__update_step_xla_130318
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: 
"
_user_specified_name
gradient
м
K
#__inference__update_step_xla_130323
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
ь
d
H__inference_activation_4_layer_call_and_return_conditional_losses_130433

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         dd b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         dd "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╢
F
*__inference_flatten_1_layer_call_fn_130658

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_129909a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         АH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_130443

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╠
I
-__inference_activation_7_layer_call_fn_130638

inputs
identity┐
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_129901i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ь
d
H__inference_activation_5_layer_call_and_return_conditional_losses_130503

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:         22@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:         22@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
▓N
╢

!__inference__wrapped_model_129705
input_1G
-model_conv2d_4_conv2d_readvariableop_resource: <
.model_conv2d_4_biasadd_readvariableop_resource: G
-model_conv2d_5_conv2d_readvariableop_resource: @<
.model_conv2d_5_biasadd_readvariableop_resource:@H
-model_conv2d_6_conv2d_readvariableop_resource:@А=
.model_conv2d_6_biasadd_readvariableop_resource:	АI
-model_conv2d_7_conv2d_readvariableop_resource:АА=
.model_conv2d_7_biasadd_readvariableop_resource:	А@
,model_dense_2_matmul_readvariableop_resource:
АHА<
-model_dense_2_biasadd_readvariableop_resource:	А?
,model_dense_3_matmul_readvariableop_resource:	А;
-model_dense_3_biasadd_readvariableop_resource:
identityИв%model/conv2d_4/BiasAdd/ReadVariableOpв$model/conv2d_4/Conv2D/ReadVariableOpв%model/conv2d_5/BiasAdd/ReadVariableOpв$model/conv2d_5/Conv2D/ReadVariableOpв%model/conv2d_6/BiasAdd/ReadVariableOpв$model/conv2d_6/Conv2D/ReadVariableOpв%model/conv2d_7/BiasAdd/ReadVariableOpв$model/conv2d_7/Conv2D/ReadVariableOpв$model/dense_2/BiasAdd/ReadVariableOpв#model/dense_2/MatMul/ReadVariableOpв$model/dense_3/BiasAdd/ReadVariableOpв#model/dense_3/MatMul/ReadVariableOpЪ
$model/conv2d_4/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╕
model/conv2d_4/Conv2DConv2Dinput_1,model/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd *
paddingSAME*
strides
Р
%model/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0к
model/conv2d_4/BiasAddBiasAddmodel/conv2d_4/Conv2D:output:0-model/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd 
model/dropout_5/IdentityIdentitymodel/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         dd |
model/activation_4/ReluRelu!model/dropout_5/Identity:output:0*
T0*/
_output_shapes
:         dd ╝
model/max_pooling2d_4/MaxPoolMaxPool%model/activation_4/Relu:activations:0*/
_output_shapes
:         22 *
ksize
*
paddingVALID*
strides
Ъ
$model/conv2d_5/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╫
model/conv2d_5/Conv2DConv2D&model/max_pooling2d_4/MaxPool:output:0,model/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22@*
paddingSAME*
strides
Р
%model/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0к
model/conv2d_5/BiasAddBiasAddmodel/conv2d_5/Conv2D:output:0-model/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22@
model/dropout_6/IdentityIdentitymodel/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         22@|
model/activation_5/ReluRelu!model/dropout_6/Identity:output:0*
T0*/
_output_shapes
:         22@╝
model/max_pooling2d_5/MaxPoolMaxPool%model/activation_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ы
$model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_6_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╪
model/conv2d_6/Conv2DConv2D&model/max_pooling2d_5/MaxPool:output:0,model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
С
%model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0л
model/conv2d_6/BiasAddBiasAddmodel/conv2d_6/Conv2D:output:0-model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
model/dropout_7/IdentityIdentitymodel/conv2d_6/BiasAdd:output:0*
T0*0
_output_shapes
:         А}
model/activation_6/ReluRelu!model/dropout_7/Identity:output:0*
T0*0
_output_shapes
:         А╜
model/max_pooling2d_6/MaxPoolMaxPool%model/activation_6/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Ь
$model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_7_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╪
model/conv2d_7/Conv2DConv2D&model/max_pooling2d_6/MaxPool:output:0,model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
С
%model/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_7_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0л
model/conv2d_7/BiasAddBiasAddmodel/conv2d_7/Conv2D:output:0-model/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АА
model/dropout_8/IdentityIdentitymodel/conv2d_7/BiasAdd:output:0*
T0*0
_output_shapes
:         А}
model/activation_7/ReluRelu!model/dropout_8/Identity:output:0*
T0*0
_output_shapes
:         А╜
model/max_pooling2d_7/MaxPoolMaxPool%model/activation_7/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  Э
model/flatten_1/ReshapeReshape&model/max_pooling2d_7/MaxPool:output:0model/flatten_1/Const:output:0*
T0*(
_output_shapes
:         АHТ
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0а
model/dense_2/MatMulMatMul model/flatten_1/Reshape:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АП
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0б
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аm
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         Аy
model/dropout_9/IdentityIdentity model/dense_2/Relu:activations:0*
T0*(
_output_shapes
:         АС
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0а
model/dense_3/MatMulMatMul!model/dropout_9/Identity:output:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         О
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
model/dense_3/SigmoidSigmoidmodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitymodel/dense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         °
NoOpNoOp&^model/conv2d_4/BiasAdd/ReadVariableOp%^model/conv2d_4/Conv2D/ReadVariableOp&^model/conv2d_5/BiasAdd/ReadVariableOp%^model/conv2d_5/Conv2D/ReadVariableOp&^model/conv2d_6/BiasAdd/ReadVariableOp%^model/conv2d_6/Conv2D/ReadVariableOp&^model/conv2d_7/BiasAdd/ReadVariableOp%^model/conv2d_7/Conv2D/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         dd: : : : : : : : : : : : 2N
%model/conv2d_4/BiasAdd/ReadVariableOp%model/conv2d_4/BiasAdd/ReadVariableOp2L
$model/conv2d_4/Conv2D/ReadVariableOp$model/conv2d_4/Conv2D/ReadVariableOp2N
%model/conv2d_5/BiasAdd/ReadVariableOp%model/conv2d_5/BiasAdd/ReadVariableOp2L
$model/conv2d_5/Conv2D/ReadVariableOp$model/conv2d_5/Conv2D/ReadVariableOp2N
%model/conv2d_6/BiasAdd/ReadVariableOp%model/conv2d_6/BiasAdd/ReadVariableOp2L
$model/conv2d_6/Conv2D/ReadVariableOp$model/conv2d_6/Conv2D/ReadVariableOp2N
%model/conv2d_7/BiasAdd/ReadVariableOp%model/conv2d_7/BiasAdd/ReadVariableOp2L
$model/conv2d_7/Conv2D/ReadVariableOp$model/conv2d_7/Conv2D/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
/
_output_shapes
:         dd
!
_user_specified_name	input_1
Ё
c
*__inference_dropout_6_layer_call_fn_130471

inputs
identityИвStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_129817w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         22@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_129720

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦k
ц
A__inference_model_layer_call_and_return_conditional_losses_129973
input_1)
conv2d_4_129762: 
conv2d_4_129764: )
conv2d_5_129801: @
conv2d_5_129803:@*
conv2d_6_129840:@А
conv2d_6_129842:	А+
conv2d_7_129879:АА
conv2d_7_129881:	А"
dense_2_129922:
АHА
dense_2_129924:	А!
dense_3_129951:	А
dense_3_129953:
identityИв conv2d_4/StatefulPartitionedCallв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_5/StatefulPartitionedCallв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_6/StatefulPartitionedCallв1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpв conv2d_7/StatefulPartitionedCallв1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallв!dropout_5/StatefulPartitionedCallв!dropout_6/StatefulPartitionedCallв!dropout_7/StatefulPartitionedCallв!dropout_8/StatefulPartitionedCallв!dropout_9/StatefulPartitionedCall№
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_4_129762conv2d_4_129764*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_129761°
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_129778я
activation_4/PartitionedCallPartitionedCall*dropout_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_129784Ё
max_pooling2d_4/PartitionedCallPartitionedCall%activation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_129710Э
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_129801conv2d_5_129803*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_129800Ь
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_6_layer_call_and_return_conditional_losses_129817я
activation_5/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_129823Ё
max_pooling2d_5/PartitionedCallPartitionedCall%activation_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_129720Ю
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_6_129840conv2d_6_129842*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_6_layer_call_and_return_conditional_losses_129839Э
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_129856Ё
activation_6/PartitionedCallPartitionedCall*dropout_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_6_layer_call_and_return_conditional_losses_129862ё
max_pooling2d_6/PartitionedCallPartitionedCall%activation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_129730Ю
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_129879conv2d_7_129881*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_7_layer_call_and_return_conditional_losses_129878Э
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_129895Ё
activation_7/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_7_layer_call_and_return_conditional_losses_129901ё
max_pooling2d_7/PartitionedCallPartitionedCall%activation_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_129740р
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         АH* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_129909М
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_129922dense_2_129924*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_129921Ф
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_129938У
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_3_129951dense_3_129953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_129950Й
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_4_129762*&
_output_shapes
: *
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Й
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_5_129801*&
_output_shapes
: @*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: К
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_6_129840*'
_output_shapes
:@А*
dtype0И
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: Л
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_7_129879*(
_output_shapes
:АА*
dtype0И
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ў
NoOpNoOp!^conv2d_4/StatefulPartitionedCall2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_5/StatefulPartitionedCall2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_6/StatefulPartitionedCall2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp!^conv2d_7/StatefulPartitionedCall2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         dd: : : : : : : : : : : : 2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:&"
 
_user_specified_name129953:&"
 
_user_specified_name129951:&
"
 
_user_specified_name129924:&	"
 
_user_specified_name129922:&"
 
_user_specified_name129881:&"
 
_user_specified_name129879:&"
 
_user_specified_name129842:&"
 
_user_specified_name129840:&"
 
_user_specified_name129803:&"
 
_user_specified_name129801:&"
 
_user_specified_name129764:&"
 
_user_specified_name129762:X T
/
_output_shapes
:         dd
!
_user_specified_name	input_1
▌
╠
&__inference_model_layer_call_fn_130120
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АHА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_130062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130116:&"
 
_user_specified_name130114:&
"
 
_user_specified_name130112:&	"
 
_user_specified_name130110:&"
 
_user_specified_name130108:&"
 
_user_specified_name130106:&"
 
_user_specified_name130104:&"
 
_user_specified_name130102:&"
 
_user_specified_name130100:&"
 
_user_specified_name130098:&"
 
_user_specified_name130096:&"
 
_user_specified_name130094:X T
/
_output_shapes
:         dd
!
_user_specified_name	input_1
╓

ў
C__inference_dense_2_layer_call_and_return_conditional_losses_129921

inputs2
matmul_readvariableop_resource:
АHА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АHА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
╘
c
*__inference_dropout_9_layer_call_fn_130689

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_129938p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╚
I
-__inference_activation_4_layer_call_fn_130428

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_4_layer_call_and_return_conditional_losses_129784h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         dd "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_4_layer_call_fn_130438

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_129710Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є
Ц
(__inference_dense_3_layer_call_fn_130720

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_129950o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130716:&"
 
_user_specified_name130714:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
║	
╗
__inference_loss_fn_3_130763V
:conv2d_7_kernel_regularizer_l2loss_readvariableop_resource:АА
identityИв1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp╢
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_7_kernel_regularizer_l2loss_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_7/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
╗
╩
$__inference_signature_wrapper_130297
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АHА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCall╜
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_129705o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130293:&"
 
_user_specified_name130291:&
"
 
_user_specified_name130289:&	"
 
_user_specified_name130287:&"
 
_user_specified_name130285:&"
 
_user_specified_name130283:&"
 
_user_specified_name130281:&"
 
_user_specified_name130279:&"
 
_user_specified_name130277:&"
 
_user_specified_name130275:&"
 
_user_specified_name130273:&"
 
_user_specified_name130271:X T
/
_output_shapes
:         dd
!
_user_specified_name	input_1
┘
▒
D__inference_conv2d_5_layer_call_and_return_conditional_losses_129800

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22@Ш
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         22@З
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         22 
 
_user_specified_nameinputs
╗
P
#__inference__update_step_xla_130368
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	А: *
	_noinline(:($
"
_user_specified_name
variable:I E

_output_shapes
:	А
"
_user_specified_name
gradient
╪

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_129895

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ц
┤
D__inference_conv2d_7_layer_call_and_return_conditional_losses_129878

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
с
│
D__inference_conv2d_6_layer_call_and_return_conditional_losses_129839

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЩ
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0И
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╢	
╣
__inference_loss_fn_0_130739T
:conv2d_4_kernel_regularizer_l2loss_readvariableop_resource: 
identityИв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp┤
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp:conv2d_4_kernel_regularizer_l2loss_readvariableop_resource*&
_output_shapes
: *
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: V
NoOpNoOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
°
c
E__inference_dropout_6_layer_call_and_return_conditional_losses_130493

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         22@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         22@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_6_layer_call_fn_130578

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_129730Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Щ
Ю
)__inference_conv2d_5_layer_call_fn_130452

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_129800w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         22@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22 : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130448:&"
 
_user_specified_name130446:W S
/
_output_shapes
:         22 
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_130583

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┬
F
*__inference_dropout_5_layer_call_fn_130406

inputs
identity╗
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_129985h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         dd "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╗
L
0__inference_max_pooling2d_5_layer_call_fn_130508

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_129720Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ї
c
*__inference_dropout_7_layer_call_fn_130541

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_7_layer_call_and_return_conditional_losses_129856x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
c
*__inference_dropout_8_layer_call_fn_130611

inputs
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_129895x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
№
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_130633

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ё
d
H__inference_activation_6_layer_call_and_return_conditional_losses_130573

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╞
F
*__inference_dropout_8_layer_call_fn_130616

inputs
identity╝
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_130024i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
п
L
#__inference__update_step_xla_130353
gradient
variable:	А*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:А: *
	_noinline(:($
"
_user_specified_name
variable:E A

_output_shapes	
:А
"
_user_specified_name
gradient
┘
▒
D__inference_conv2d_5_layer_call_and_return_conditional_losses_130466

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         22@Ш
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0И
"conv2d_5/kernel/Regularizer/L2LossL2Loss9conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_5/kernel/Regularizer/mulMul*conv2d_5/kernel/Regularizer/mul/x:output:0+conv2d_5/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         22@З
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_5/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         22 
 
_user_specified_nameinputs
Ё
c
*__inference_dropout_5_layer_call_fn_130401

inputs
identityИвStatefulPartitionedCall╦
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_129778w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         dd <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
▌
╠
&__inference_model_layer_call_fn_130091
input_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:
АHА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_129973o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         dd: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130087:&"
 
_user_specified_name130085:&
"
 
_user_specified_name130083:&	"
 
_user_specified_name130081:&"
 
_user_specified_name130079:&"
 
_user_specified_name130077:&"
 
_user_specified_name130075:&"
 
_user_specified_name130073:&"
 
_user_specified_name130071:&"
 
_user_specified_name130069:&"
 
_user_specified_name130067:&"
 
_user_specified_name130065:X T
/
_output_shapes
:         dd
!
_user_specified_name	input_1
┘
▒
D__inference_conv2d_4_layer_call_and_return_conditional_losses_130396

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd Ш
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         dd З
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
┘
▒
D__inference_conv2d_4_layer_call_and_return_conditional_losses_129761

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd Ш
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0И
"conv2d_4/kernel/Regularizer/L2LossL2Loss9conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_4/kernel/Regularizer/mulMul*conv2d_4/kernel/Regularizer/mul/x:output:0+conv2d_4/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:         dd З
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_4/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_129710

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ё
d
H__inference_activation_7_layer_call_and_return_conditional_losses_129901

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:         Аc
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
м
K
#__inference__update_step_xla_130333
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
ц
┤
D__inference_conv2d_7_layer_call_and_return_conditional_losses_130606

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЪ
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0И
"conv2d_7/kernel/Regularizer/L2LossL2Loss9conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_7/kernel/Regularizer/mulMul*conv2d_7/kernel/Regularizer/mul/x:output:0+conv2d_7/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_7/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╛
Q
#__inference__update_step_xla_130358
gradient
variable:
АHА*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
АHА: *
	_noinline(:($
"
_user_specified_name
variable:J F
 
_output_shapes
:
АHА
"
_user_specified_name
gradient
▄
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_130038

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╚
I
-__inference_activation_5_layer_call_fn_130498

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_activation_5_layer_call_and_return_conditional_losses_129823h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         22@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
с
│
D__inference_conv2d_6_layer_call_and_return_conditional_losses_130536

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЩ
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0И
"conv2d_6/kernel/Regularizer/L2LossL2Loss9conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: f
!conv2d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o;а
conv2d_6/kernel/Regularizer/mulMul*conv2d_6/kernel/Regularizer/mul/x:output:0+conv2d_6/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:         АЗ
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp1conv2d_6/kernel/Regularizer/L2Loss/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╪

d
E__inference_dropout_8_layer_call_and_return_conditional_losses_130628

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Щ
Ю
)__inference_conv2d_4_layer_call_fn_130382

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_129761w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         dd <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130378:&"
 
_user_specified_name130376:W S
/
_output_shapes
:         dd
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_129730

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ў
Ш
(__inference_dense_2_layer_call_fn_130673

inputs
unknown:
АHА
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_129921p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         АH: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name130669:&"
 
_user_specified_name130667:P L
(
_output_shapes
:         АH
 
_user_specified_nameinputs
├┴
в
"__inference__traced_restore_131172
file_prefix:
 assignvariableop_conv2d_4_kernel: .
 assignvariableop_1_conv2d_4_bias: <
"assignvariableop_2_conv2d_5_kernel: @.
 assignvariableop_3_conv2d_5_bias:@=
"assignvariableop_4_conv2d_6_kernel:@А/
 assignvariableop_5_conv2d_6_bias:	А>
"assignvariableop_6_conv2d_7_kernel:АА/
 assignvariableop_7_conv2d_7_bias:	А5
!assignvariableop_8_dense_2_kernel:
АHА.
assignvariableop_9_dense_2_bias:	А5
"assignvariableop_10_dense_3_kernel:	А.
 assignvariableop_11_dense_3_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: D
*assignvariableop_14_adam_m_conv2d_4_kernel: D
*assignvariableop_15_adam_v_conv2d_4_kernel: 6
(assignvariableop_16_adam_m_conv2d_4_bias: 6
(assignvariableop_17_adam_v_conv2d_4_bias: D
*assignvariableop_18_adam_m_conv2d_5_kernel: @D
*assignvariableop_19_adam_v_conv2d_5_kernel: @6
(assignvariableop_20_adam_m_conv2d_5_bias:@6
(assignvariableop_21_adam_v_conv2d_5_bias:@E
*assignvariableop_22_adam_m_conv2d_6_kernel:@АE
*assignvariableop_23_adam_v_conv2d_6_kernel:@А7
(assignvariableop_24_adam_m_conv2d_6_bias:	А7
(assignvariableop_25_adam_v_conv2d_6_bias:	АF
*assignvariableop_26_adam_m_conv2d_7_kernel:ААF
*assignvariableop_27_adam_v_conv2d_7_kernel:АА7
(assignvariableop_28_adam_m_conv2d_7_bias:	А7
(assignvariableop_29_adam_v_conv2d_7_bias:	А=
)assignvariableop_30_adam_m_dense_2_kernel:
АHА=
)assignvariableop_31_adam_v_dense_2_kernel:
АHА6
'assignvariableop_32_adam_m_dense_2_bias:	А6
'assignvariableop_33_adam_v_dense_2_bias:	А<
)assignvariableop_34_adam_m_dense_3_kernel:	А<
)assignvariableop_35_adam_v_dense_3_kernel:	А5
'assignvariableop_36_adam_m_dense_3_bias:5
'assignvariableop_37_adam_v_dense_3_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╖
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*▌
value╙B╨+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╞
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B °
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*┬
_output_shapesп
м:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_conv2d_4_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_4_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_5_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_5_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_6_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_6_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_7_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_7_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_3_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_3_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_m_conv2d_4_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_v_conv2d_4_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_conv2d_4_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_conv2d_4_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_conv2d_5_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_conv2d_5_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_m_conv2d_5_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_v_conv2d_5_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_6_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_6_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_conv2d_6_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_conv2d_6_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_7_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_7_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_conv2d_7_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_conv2d_7_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_m_dense_2_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_v_dense_2_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_m_dense_2_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_v_dense_2_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_m_dense_3_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_v_dense_3_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_m_dense_3_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_37AssignVariableOp'assignvariableop_37_adam_v_dense_3_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ы
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: ┤
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%*!

_user_specified_namecount:%)!

_user_specified_nametotal:'(#
!
_user_specified_name	count_1:''#
!
_user_specified_name	total_1:3&/
-
_user_specified_nameAdam/v/dense_3/bias:3%/
-
_user_specified_nameAdam/m/dense_3/bias:5$1
/
_user_specified_nameAdam/v/dense_3/kernel:5#1
/
_user_specified_nameAdam/m/dense_3/kernel:3"/
-
_user_specified_nameAdam/v/dense_2/bias:3!/
-
_user_specified_nameAdam/m/dense_2/bias:5 1
/
_user_specified_nameAdam/v/dense_2/kernel:51
/
_user_specified_nameAdam/m/dense_2/kernel:40
.
_user_specified_nameAdam/v/conv2d_7/bias:40
.
_user_specified_nameAdam/m/conv2d_7/bias:62
0
_user_specified_nameAdam/v/conv2d_7/kernel:62
0
_user_specified_nameAdam/m/conv2d_7/kernel:40
.
_user_specified_nameAdam/v/conv2d_6/bias:40
.
_user_specified_nameAdam/m/conv2d_6/bias:62
0
_user_specified_nameAdam/v/conv2d_6/kernel:62
0
_user_specified_nameAdam/m/conv2d_6/kernel:40
.
_user_specified_nameAdam/v/conv2d_5/bias:40
.
_user_specified_nameAdam/m/conv2d_5/bias:62
0
_user_specified_nameAdam/v/conv2d_5/kernel:62
0
_user_specified_nameAdam/m/conv2d_5/kernel:40
.
_user_specified_nameAdam/v/conv2d_4/bias:40
.
_user_specified_nameAdam/m/conv2d_4/bias:62
0
_user_specified_nameAdam/v/conv2d_4/kernel:62
0
_user_specified_nameAdam/m/conv2d_4/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,
(
&
_user_specified_namedense_2/bias:.	*
(
_user_specified_namedense_2/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:-)
'
_user_specified_nameconv2d_5/bias:/+
)
_user_specified_nameconv2d_5/kernel:-)
'
_user_specified_nameconv2d_4/bias:/+
)
_user_specified_nameconv2d_4/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╤

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_129817

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         22@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         22@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         22@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         22@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         22@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
═

ї
C__inference_dense_3_layer_call_and_return_conditional_losses_129950

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╔
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_129909

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     $  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АHY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         АH"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╤

d
E__inference_dropout_6_layer_call_and_return_conditional_losses_130488

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         22@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         22@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         22@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         22@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         22@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         22@:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
°
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_129985

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         dd c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         dd "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         dd :W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
а

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_130706

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▓
serving_defaultЮ
C
input_18
serving_default_input_1:0         dd;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:╒ю
е
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer-6
layer-7
	layer-8

layer_with_weights-2

layer-9
layer-10
layer-11
layer-12
layer_with_weights-3
layer-13
layer-14
layer-15
layer-16
layer-17
layer_with_weights-4
layer-18
layer-19
layer_with_weights-5
layer-20
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
▌
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias
 (_jit_compiled_convolution_op"
_tf_keras_layer
╝
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/_random_generator"
_tf_keras_layer
е
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
е
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op"
_tf_keras_layer
╝
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
K_random_generator"
_tf_keras_layer
е
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
е
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op"
_tf_keras_layer
╝
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses
g_random_generator"
_tf_keras_layer
е
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
е
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias
 |_jit_compiled_convolution_op"
_tf_keras_layer
└
}	variables
~trainable_variables
regularization_losses
А	keras_api
Б__call__
+В&call_and_return_all_conditional_losses
Г_random_generator"
_tf_keras_layer
л
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
л
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ьkernel
	Эbias"
_tf_keras_layer
├
Ю	variables
Яtrainable_variables
аregularization_losses
б	keras_api
в__call__
+г&call_and_return_all_conditional_losses
д_random_generator"
_tf_keras_layer
├
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
лkernel
	мbias"
_tf_keras_layer
z
&0
'1
B2
C3
^4
_5
z6
{7
Ь8
Э9
л10
м11"
trackable_list_wrapper
z
&0
'1
B2
C3
^4
_5
z6
{7
Ь8
Э9
л10
м11"
trackable_list_wrapper
@
н0
о1
п2
░3"
trackable_list_wrapper
╧
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
├
╢trace_0
╖trace_12И
&__inference_model_layer_call_fn_130091
&__inference_model_layer_call_fn_130120╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0z╖trace_1
∙
╕trace_0
╣trace_12╛
A__inference_model_layer_call_and_return_conditional_losses_129973
A__inference_model_layer_call_and_return_conditional_losses_130062╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0z╣trace_1
╠B╔
!__inference__wrapped_model_129705input_1"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
║
_variables
╗_iterations
╝_learning_rate
╜_index_dict
╛
_momentums
┐_velocities
└_update_step_xla"
experimentalOptimizer
 "
trackable_list_wrapper
-
┴serving_default"
signature_map
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
(
н0"
trackable_list_wrapper
▓
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
х
╟trace_02╞
)__inference_conv2d_4_layer_call_fn_130382Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
А
╚trace_02с
D__inference_conv2d_4_layer_call_and_return_conditional_losses_130396Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0
):' 2conv2d_4/kernel
: 2conv2d_4/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╔non_trainable_variables
╩layers
╦metrics
 ╠layer_regularization_losses
═layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
┐
╬trace_0
╧trace_12Д
*__inference_dropout_5_layer_call_fn_130401
*__inference_dropout_5_layer_call_fn_130406й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╬trace_0z╧trace_1
ї
╨trace_0
╤trace_12║
E__inference_dropout_5_layer_call_and_return_conditional_losses_130418
E__inference_dropout_5_layer_call_and_return_conditional_losses_130423й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0z╤trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
щ
╫trace_02╩
-__inference_activation_4_layer_call_fn_130428Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╫trace_0
Д
╪trace_02х
H__inference_activation_4_layer_call_and_return_conditional_losses_130433Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ь
▐trace_02═
0__inference_max_pooling2d_4_layer_call_fn_130438Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0
З
▀trace_02ш
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_130443Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▀trace_0
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
(
о0"
trackable_list_wrapper
▓
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
х
хtrace_02╞
)__inference_conv2d_5_layer_call_fn_130452Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zхtrace_0
А
цtrace_02с
D__inference_conv2d_5_layer_call_and_return_conditional_losses_130466Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0
):' @2conv2d_5/kernel
:@2conv2d_5/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
┐
ьtrace_0
эtrace_12Д
*__inference_dropout_6_layer_call_fn_130471
*__inference_dropout_6_layer_call_fn_130476й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zьtrace_0zэtrace_1
ї
юtrace_0
яtrace_12║
E__inference_dropout_6_layer_call_and_return_conditional_losses_130488
E__inference_dropout_6_layer_call_and_return_conditional_losses_130493й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zюtrace_0zяtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
щ
їtrace_02╩
-__inference_activation_5_layer_call_fn_130498Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zїtrace_0
Д
Ўtrace_02х
H__inference_activation_5_layer_call_and_return_conditional_losses_130503Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ь
№trace_02═
0__inference_max_pooling2d_5_layer_call_fn_130508Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z№trace_0
З
¤trace_02ш
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_130513Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
(
п0"
trackable_list_wrapper
▓
■non_trainable_variables
 layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
х
Гtrace_02╞
)__inference_conv2d_6_layer_call_fn_130522Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zГtrace_0
А
Дtrace_02с
D__inference_conv2d_6_layer_call_and_return_conditional_losses_130536Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0
*:(@А2conv2d_6/kernel
:А2conv2d_6/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
┐
Кtrace_0
Лtrace_12Д
*__inference_dropout_7_layer_call_fn_130541
*__inference_dropout_7_layer_call_fn_130546й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zКtrace_0zЛtrace_1
ї
Мtrace_0
Нtrace_12║
E__inference_dropout_7_layer_call_and_return_conditional_losses_130558
E__inference_dropout_7_layer_call_and_return_conditional_losses_130563й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0zНtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
щ
Уtrace_02╩
-__inference_activation_6_layer_call_fn_130568Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
Д
Фtrace_02х
H__inference_activation_6_layer_call_and_return_conditional_losses_130573Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
ь
Ъtrace_02═
0__inference_max_pooling2d_6_layer_call_fn_130578Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
З
Ыtrace_02ш
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_130583Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
(
░0"
trackable_list_wrapper
▓
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
х
бtrace_02╞
)__inference_conv2d_7_layer_call_fn_130592Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
А
вtrace_02с
D__inference_conv2d_7_layer_call_and_return_conditional_losses_130606Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
+:)АА2conv2d_7/kernel
:А2conv2d_7/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
}	variables
~trainable_variables
regularization_losses
Б__call__
+В&call_and_return_all_conditional_losses
'В"call_and_return_conditional_losses"
_generic_user_object
┐
иtrace_0
йtrace_12Д
*__inference_dropout_8_layer_call_fn_130611
*__inference_dropout_8_layer_call_fn_130616й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zиtrace_0zйtrace_1
ї
кtrace_0
лtrace_12║
E__inference_dropout_8_layer_call_and_return_conditional_losses_130628
E__inference_dropout_8_layer_call_and_return_conditional_losses_130633й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0zлtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
щ
▒trace_02╩
-__inference_activation_7_layer_call_fn_130638Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
Д
▓trace_02х
H__inference_activation_7_layer_call_and_return_conditional_losses_130643Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
ь
╕trace_02═
0__inference_max_pooling2d_7_layer_call_fn_130648Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
З
╣trace_02ш
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_130653Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╣trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
ц
┐trace_02╟
*__inference_flatten_1_layer_call_fn_130658Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
Б
└trace_02т
E__inference_flatten_1_layer_call_and_return_conditional_losses_130664Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
0
Ь0
Э1"
trackable_list_wrapper
0
Ь0
Э1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
ф
╞trace_02┼
(__inference_dense_2_layer_call_fn_130673Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
 
╟trace_02р
C__inference_dense_2_layer_call_and_return_conditional_losses_130684Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0
": 
АHА2dense_2/kernel
:А2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╚non_trainable_variables
╔layers
╩metrics
 ╦layer_regularization_losses
╠layer_metrics
Ю	variables
Яtrainable_variables
аregularization_losses
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
┐
═trace_0
╬trace_12Д
*__inference_dropout_9_layer_call_fn_130689
*__inference_dropout_9_layer_call_fn_130694й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0z╬trace_1
ї
╧trace_0
╨trace_12║
E__inference_dropout_9_layer_call_and_return_conditional_losses_130706
E__inference_dropout_9_layer_call_and_return_conditional_losses_130711й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0z╨trace_1
"
_generic_user_object
0
л0
м1"
trackable_list_wrapper
0
л0
м1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
ф
╓trace_02┼
(__inference_dense_3_layer_call_fn_130720Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0
 
╫trace_02р
C__inference_dense_3_layer_call_and_return_conditional_losses_130731Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╫trace_0
!:	А2dense_3/kernel
:2dense_3/bias
╧
╪trace_02░
__inference_loss_fn_0_130739П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z╪trace_0
╧
┘trace_02░
__inference_loss_fn_1_130747П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z┘trace_0
╧
┌trace_02░
__inference_loss_fn_2_130755П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z┌trace_0
╧
█trace_02░
__inference_loss_fn_3_130763П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в z█trace_0
 "
trackable_list_wrapper
╛
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
9
10
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
0
▄0
▌1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
хBт
&__inference_model_layer_call_fn_130091input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
хBт
&__inference_model_layer_call_fn_130120input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
A__inference_model_layer_call_and_return_conditional_losses_129973input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
A__inference_model_layer_call_and_return_conditional_losses_130062input_1"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ў
╗0
▐1
▀2
р3
с4
т5
у6
ф7
х8
ц9
ч10
ш11
щ12
ъ13
ы14
ь15
э16
ю17
я18
Ё19
ё20
Є21
є22
Ї23
ї24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
▐0
р1
т2
ф3
ц4
ш5
ъ6
ь7
ю8
Ё9
Є10
Ї11"
trackable_list_wrapper
В
▀0
с1
у2
х3
ч4
щ5
ы6
э7
я8
ё9
є10
ї11"
trackable_list_wrapper
┼
Ўtrace_0
ўtrace_1
°trace_2
∙trace_3
·trace_4
√trace_5
№trace_6
¤trace_7
■trace_8
 trace_9
Аtrace_10
Бtrace_112ю
#__inference__update_step_xla_130318
#__inference__update_step_xla_130323
#__inference__update_step_xla_130328
#__inference__update_step_xla_130333
#__inference__update_step_xla_130338
#__inference__update_step_xla_130343
#__inference__update_step_xla_130348
#__inference__update_step_xla_130353
#__inference__update_step_xla_130358
#__inference__update_step_xla_130363
#__inference__update_step_xla_130368
#__inference__update_step_xla_130373п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0zЎtrace_0zўtrace_1z°trace_2z∙trace_3z·trace_4z√trace_5z№trace_6z¤trace_7z■trace_8z trace_9zАtrace_10zБtrace_11
╨B═
$__inference_signature_wrapper_130297input_1"Щ
Т▓О
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ
	jinput_1
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
н0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_4_layer_call_fn_130382inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_130396inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
*__inference_dropout_5_layer_call_fn_130401inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
рB▌
*__inference_dropout_5_layer_call_fn_130406inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_5_layer_call_and_return_conditional_losses_130418inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_5_layer_call_and_return_conditional_losses_130423inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_activation_4_layer_call_fn_130428inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_activation_4_layer_call_and_return_conditional_losses_130433inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_4_layer_call_fn_130438inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_130443inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
о0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_5_layer_call_fn_130452inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_130466inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
*__inference_dropout_6_layer_call_fn_130471inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
рB▌
*__inference_dropout_6_layer_call_fn_130476inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_6_layer_call_and_return_conditional_losses_130488inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_6_layer_call_and_return_conditional_losses_130493inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_activation_5_layer_call_fn_130498inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_activation_5_layer_call_and_return_conditional_losses_130503inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_5_layer_call_fn_130508inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_130513inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
п0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_6_layer_call_fn_130522inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_6_layer_call_and_return_conditional_losses_130536inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
*__inference_dropout_7_layer_call_fn_130541inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
рB▌
*__inference_dropout_7_layer_call_fn_130546inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_7_layer_call_and_return_conditional_losses_130558inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_7_layer_call_and_return_conditional_losses_130563inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_activation_6_layer_call_fn_130568inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_activation_6_layer_call_and_return_conditional_losses_130573inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_6_layer_call_fn_130578inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_130583inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
░0"
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_conv2d_7_layer_call_fn_130592inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_7_layer_call_and_return_conditional_losses_130606inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
*__inference_dropout_8_layer_call_fn_130611inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
рB▌
*__inference_dropout_8_layer_call_fn_130616inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_8_layer_call_and_return_conditional_losses_130628inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_8_layer_call_and_return_conditional_losses_130633inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╫B╘
-__inference_activation_7_layer_call_fn_130638inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_activation_7_layer_call_and_return_conditional_losses_130643inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┌B╫
0__inference_max_pooling2d_7_layer_call_fn_130648inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_130653inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_flatten_1_layer_call_fn_130658inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_flatten_1_layer_call_and_return_conditional_losses_130664inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╥B╧
(__inference_dense_2_layer_call_fn_130673inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_2_layer_call_and_return_conditional_losses_130684inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
*__inference_dropout_9_layer_call_fn_130689inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
рB▌
*__inference_dropout_9_layer_call_fn_130694inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_9_layer_call_and_return_conditional_losses_130706inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
E__inference_dropout_9_layer_call_and_return_conditional_losses_130711inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╥B╧
(__inference_dense_3_layer_call_fn_130720inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_dense_3_layer_call_and_return_conditional_losses_130731inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│B░
__inference_loss_fn_0_130739"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_1_130747"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_2_130755"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_3_130763"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
R
В	variables
Г	keras_api

Дtotal

Еcount"
_tf_keras_metric
c
Ж	variables
З	keras_api

Иtotal

Йcount
К
_fn_kwargs"
_tf_keras_metric
.:, 2Adam/m/conv2d_4/kernel
.:, 2Adam/v/conv2d_4/kernel
 : 2Adam/m/conv2d_4/bias
 : 2Adam/v/conv2d_4/bias
.:, @2Adam/m/conv2d_5/kernel
.:, @2Adam/v/conv2d_5/kernel
 :@2Adam/m/conv2d_5/bias
 :@2Adam/v/conv2d_5/bias
/:-@А2Adam/m/conv2d_6/kernel
/:-@А2Adam/v/conv2d_6/kernel
!:А2Adam/m/conv2d_6/bias
!:А2Adam/v/conv2d_6/bias
0:.АА2Adam/m/conv2d_7/kernel
0:.АА2Adam/v/conv2d_7/kernel
!:А2Adam/m/conv2d_7/bias
!:А2Adam/v/conv2d_7/bias
':%
АHА2Adam/m/dense_2/kernel
':%
АHА2Adam/v/dense_2/kernel
 :А2Adam/m/dense_2/bias
 :А2Adam/v/dense_2/bias
&:$	А2Adam/m/dense_3/kernel
&:$	А2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
юBы
#__inference__update_step_xla_130318gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130323gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130328gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130333gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130338gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130343gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130348gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130353gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130358gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130363gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130368gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
#__inference__update_step_xla_130373gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
Д0
Е1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
0
И0
Й1"
trackable_list_wrapper
.
Ж	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperе
#__inference__update_step_xla_130318~xвu
nвk
!К
gradient 
<Т9	%в"
· 
А
p
` VariableSpec 
`р├▒╬мц?
к "
 Н
#__inference__update_step_xla_130323f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`а─╬Биц?
к "
 е
#__inference__update_step_xla_130328~xвu
nвk
!К
gradient @
<Т9	%в"
· @
А
p
` VariableSpec 
`└╩╚Бжц?
к "
 Н
#__inference__update_step_xla_130333f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`└╘╚Бжц?
к "
 и
#__inference__update_step_xla_130338Аzвw
pвm
"К
gradient@А
=Т:	&в#
·@А
А
p
` VariableSpec 
`└й╔Бжц?
к "
 П
#__inference__update_step_xla_130343hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`└│╔Бжц?
к "
 к
#__inference__update_step_xla_130348В|вy
rвo
#К 
gradientАА
>Т;	'в$
·АА
А
p
` VariableSpec 
`└О╘Бжц?
к "
 П
#__inference__update_step_xla_130353hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`АС╘Бжц?
к "
 Щ
#__inference__update_step_xla_130358rlвi
bв_
К
gradient
АHА
6Т3	в
·
АHА
А
p
` VariableSpec 
`АС┬Бжц?
к "
 П
#__inference__update_step_xla_130363hbв_
XвU
К
gradientА
1Т.	в
·А
А
p
` VariableSpec 
`аЬ┬Бжц?
к "
 Ч
#__inference__update_step_xla_130368pjвg
`в]
К
gradient	А
5Т2	в
·	А
А
p
` VariableSpec 
`аК├Бжц?
к "
 Н
#__inference__update_step_xla_130373f`в]
VвS
К
gradient
0Т-	в
·
А
p
` VariableSpec 
`АЫ┬Бжц?
к "
 д
!__inference__wrapped_model_129705&'BC^_z{ЬЭлм8в5
.в+
)К&
input_1         dd
к "1к.
,
dense_3!К
dense_3         ╗
H__inference_activation_4_layer_call_and_return_conditional_losses_130433o7в4
-в*
(К%
inputs         dd 
к "4в1
*К'
tensor_0         dd 
Ъ Х
-__inference_activation_4_layer_call_fn_130428d7в4
-в*
(К%
inputs         dd 
к ")К&
unknown         dd ╗
H__inference_activation_5_layer_call_and_return_conditional_losses_130503o7в4
-в*
(К%
inputs         22@
к "4в1
*К'
tensor_0         22@
Ъ Х
-__inference_activation_5_layer_call_fn_130498d7в4
-в*
(К%
inputs         22@
к ")К&
unknown         22@╜
H__inference_activation_6_layer_call_and_return_conditional_losses_130573q8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
-__inference_activation_6_layer_call_fn_130568f8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╜
H__inference_activation_7_layer_call_and_return_conditional_losses_130643q8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
-__inference_activation_7_layer_call_fn_130638f8в5
.в+
)К&
inputs         А
к "*К'
unknown         А╗
D__inference_conv2d_4_layer_call_and_return_conditional_losses_130396s&'7в4
-в*
(К%
inputs         dd
к "4в1
*К'
tensor_0         dd 
Ъ Х
)__inference_conv2d_4_layer_call_fn_130382h&'7в4
-в*
(К%
inputs         dd
к ")К&
unknown         dd ╗
D__inference_conv2d_5_layer_call_and_return_conditional_losses_130466sBC7в4
-в*
(К%
inputs         22 
к "4в1
*К'
tensor_0         22@
Ъ Х
)__inference_conv2d_5_layer_call_fn_130452hBC7в4
-в*
(К%
inputs         22 
к ")К&
unknown         22@╝
D__inference_conv2d_6_layer_call_and_return_conditional_losses_130536t^_7в4
-в*
(К%
inputs         @
к "5в2
+К(
tensor_0         А
Ъ Ц
)__inference_conv2d_6_layer_call_fn_130522i^_7в4
-в*
(К%
inputs         @
к "*К'
unknown         А╜
D__inference_conv2d_7_layer_call_and_return_conditional_losses_130606uz{8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_conv2d_7_layer_call_fn_130592jz{8в5
.в+
)К&
inputs         А
к "*К'
unknown         Ао
C__inference_dense_2_layer_call_and_return_conditional_losses_130684gЬЭ0в-
&в#
!К
inputs         АH
к "-в*
#К 
tensor_0         А
Ъ И
(__inference_dense_2_layer_call_fn_130673\ЬЭ0в-
&в#
!К
inputs         АH
к ""К
unknown         Ан
C__inference_dense_3_layer_call_and_return_conditional_losses_130731fлм0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ З
(__inference_dense_3_layer_call_fn_130720[лм0в-
&в#
!К
inputs         А
к "!К
unknown         ╝
E__inference_dropout_5_layer_call_and_return_conditional_losses_130418s;в8
1в.
(К%
inputs         dd 
p
к "4в1
*К'
tensor_0         dd 
Ъ ╝
E__inference_dropout_5_layer_call_and_return_conditional_losses_130423s;в8
1в.
(К%
inputs         dd 
p 
к "4в1
*К'
tensor_0         dd 
Ъ Ц
*__inference_dropout_5_layer_call_fn_130401h;в8
1в.
(К%
inputs         dd 
p
к ")К&
unknown         dd Ц
*__inference_dropout_5_layer_call_fn_130406h;в8
1в.
(К%
inputs         dd 
p 
к ")К&
unknown         dd ╝
E__inference_dropout_6_layer_call_and_return_conditional_losses_130488s;в8
1в.
(К%
inputs         22@
p
к "4в1
*К'
tensor_0         22@
Ъ ╝
E__inference_dropout_6_layer_call_and_return_conditional_losses_130493s;в8
1в.
(К%
inputs         22@
p 
к "4в1
*К'
tensor_0         22@
Ъ Ц
*__inference_dropout_6_layer_call_fn_130471h;в8
1в.
(К%
inputs         22@
p
к ")К&
unknown         22@Ц
*__inference_dropout_6_layer_call_fn_130476h;в8
1в.
(К%
inputs         22@
p 
к ")К&
unknown         22@╛
E__inference_dropout_7_layer_call_and_return_conditional_losses_130558u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ ╛
E__inference_dropout_7_layer_call_and_return_conditional_losses_130563u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ Ш
*__inference_dropout_7_layer_call_fn_130541j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         АШ
*__inference_dropout_7_layer_call_fn_130546j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         А╛
E__inference_dropout_8_layer_call_and_return_conditional_losses_130628u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ ╛
E__inference_dropout_8_layer_call_and_return_conditional_losses_130633u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ Ш
*__inference_dropout_8_layer_call_fn_130611j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         АШ
*__inference_dropout_8_layer_call_fn_130616j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         Ао
E__inference_dropout_9_layer_call_and_return_conditional_losses_130706e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ о
E__inference_dropout_9_layer_call_and_return_conditional_losses_130711e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ И
*__inference_dropout_9_layer_call_fn_130689Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         АИ
*__inference_dropout_9_layer_call_fn_130694Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         А▓
E__inference_flatten_1_layer_call_and_return_conditional_losses_130664i8в5
.в+
)К&
inputs         А
к "-в*
#К 
tensor_0         АH
Ъ М
*__inference_flatten_1_layer_call_fn_130658^8в5
.в+
)К&
inputs         А
к ""К
unknown         АHD
__inference_loss_fn_0_130739$&в

в 
к "К
unknown D
__inference_loss_fn_1_130747$Bв

в 
к "К
unknown D
__inference_loss_fn_2_130755$^в

в 
к "К
unknown D
__inference_loss_fn_3_130763$zв

в 
к "К
unknown ї
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_130443еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_4_layer_call_fn_130438ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_130513еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_5_layer_call_fn_130508ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_130583еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_6_layer_call_fn_130578ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_130653еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_7_layer_call_fn_130648ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╚
A__inference_model_layer_call_and_return_conditional_losses_129973В&'BC^_z{ЬЭлм@в=
6в3
)К&
input_1         dd
p

 
к ",в)
"К
tensor_0         
Ъ ╚
A__inference_model_layer_call_and_return_conditional_losses_130062В&'BC^_z{ЬЭлм@в=
6в3
)К&
input_1         dd
p 

 
к ",в)
"К
tensor_0         
Ъ б
&__inference_model_layer_call_fn_130091w&'BC^_z{ЬЭлм@в=
6в3
)К&
input_1         dd
p

 
к "!К
unknown         б
&__inference_model_layer_call_fn_130120w&'BC^_z{ЬЭлм@в=
6в3
)К&
input_1         dd
p 

 
к "!К
unknown         │
$__inference_signature_wrapper_130297К&'BC^_z{ЬЭлмCв@
в 
9к6
4
input_1)К&
input_1         dd"1к.
,
dense_3!К
dense_3         