import bpy
from bpy.props import *
from bpy.types import Node, NodeSocket
from arm.logicnode.arm_nodes import *

class PauseActionNode(Node, ArmLogicTreeNode):
    '''Pause action node'''
    bl_idname = 'LNPauseActionNode'
    bl_label = 'Pause Action'
    bl_icon = 'GAME'

    def init(self, context):
        self.inputs.new('ArmNodeSocketOperator', 'In')
        self.inputs.new('ArmNodeSocketObject', 'Object')
        self.outputs.new('ArmNodeSocketOperator', 'Out')

add_node(PauseActionNode, category='Animation')