
l
inputsPlaceholder*
dtype0*&
shape:�����������* 
_user_specified_nameinputs
}
0sequential/conv2d/Conv2D/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
x
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential/conv2d/Conv2D/ReadVariableOp/resource*
dtype0
�
sequential/conv2d/Conv2DConv2Dinputs'sequential/conv2d/Conv2D/ReadVariableOp*
	dilations
*
explicit_paddings
 *
T0*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
paddingVALID
~
1sequential/conv2d/BiasAdd/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
z
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential/conv2d/BiasAdd/ReadVariableOp/resource*
dtype0
�
sequential/conv2d/BiasAddBiasAddsequential/conv2d/Conv2D(sequential/conv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
B
sequential/conv2d/ReluRelusequential/conv2d/BiasAdd*
T0
�
$sequential/average_pooling2d/AvgPoolAvgPoolsequential/conv2d/Relu*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingVALID

2sequential/conv2d_1/Conv2D/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
|
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential/conv2d_1/Conv2D/ReadVariableOp/resource*
dtype0
�
sequential/conv2d_1/Conv2DConv2D$sequential/average_pooling2d/AvgPool)sequential/conv2d_1/Conv2D/ReadVariableOp*
	dilations
*
explicit_paddings
 *
T0*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC*
paddingVALID
�
3sequential/conv2d_1/BiasAdd/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
~
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential/conv2d_1/BiasAdd/ReadVariableOp/resource*
dtype0
�
sequential/conv2d_1/BiasAddBiasAddsequential/conv2d_1/Conv2D*sequential/conv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
F
sequential/conv2d_1/ReluRelusequential/conv2d_1/BiasAdd*
T0
�
&sequential/average_pooling2d_1/AvgPoolAvgPoolsequential/conv2d_1/Relu*
strides
*
paddingVALID*
T0*
data_formatNHWC*
ksize


2sequential/conv2d_2/Conv2D/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
|
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential/conv2d_2/Conv2D/ReadVariableOp/resource*
dtype0
�
sequential/conv2d_2/Conv2DConv2D&sequential/average_pooling2d_1/AvgPool)sequential/conv2d_2/Conv2D/ReadVariableOp*
	dilations
*
explicit_paddings
 *
T0*
strides
*
use_cudnn_on_gpu(*
data_formatNHWC*
paddingVALID
�
3sequential/conv2d_2/BiasAdd/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
~
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential/conv2d_2/BiasAdd/ReadVariableOp/resource*
dtype0
�
sequential/conv2d_2/BiasAddBiasAddsequential/conv2d_2/Conv2D*sequential/conv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
F
sequential/conv2d_2/ReluRelusequential/conv2d_2/BiasAdd*
T0
�
&sequential/average_pooling2d_2/AvgPoolAvgPoolsequential/conv2d_2/Relu*
strides
*
paddingVALID*
T0*
data_formatNHWC*
ksize

M
sequential/flatten/ConstConst*
dtype0*
valueB"����@�  
~
sequential/flatten/ReshapeReshape&sequential/average_pooling2d_2/AvgPoolsequential/flatten/Const*
Tshape0*
T0
|
/sequential/dense/MatMul/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
v
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential/dense/MatMul/ReadVariableOp/resource*
dtype0
�
sequential/dense/MatMulMatMulsequential/flatten/Reshape&sequential/dense/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( 
}
0sequential/dense/BiasAdd/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
x
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential/dense/BiasAdd/ReadVariableOp/resource*
dtype0
�
sequential/dense/BiasAddBiasAddsequential/dense/MatMul'sequential/dense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
@
sequential/dense/ReluRelusequential/dense/BiasAdd*
T0
~
1sequential/dense_1/MatMul/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
z
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential/dense_1/MatMul/ReadVariableOp/resource*
dtype0
�
sequential/dense_1/MatMulMatMulsequential/dense/Relu(sequential/dense_1/MatMul/ReadVariableOp*
transpose_b( *
T0*
transpose_a( 

2sequential/dense_1/BiasAdd/ReadVariableOp/resourcePlaceholder*
dtype0*
shape: *"
_user_specified_name
resource
|
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential/dense_1/BiasAdd/ReadVariableOp/resource*
dtype0
�
sequential/dense_1/BiasAddBiasAddsequential/dense_1/MatMul)sequential/dense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC
J
sequential/dense_1/SoftmaxSoftmaxsequential/dense_1/BiasAdd*
T0
@
IdentityIdentitysequential/dense_1/Softmax^NoOp*
T0
�
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp "�