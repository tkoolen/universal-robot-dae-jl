using Pkg
Pkg.activate(@__DIR__)

using RigidBodyDynamics, MeshCatMechanisms, Random

urdf = joinpath(@__DIR__, "ur10.urdf")
robot = parse_urdf(urdf, remove_fixed_tree_joints=false)
state = MechanismState(robot)
rand!(state)
#visuals = URDFVisuals(urdf; tag="collision") # works
visuals = URDFVisuals(urdf) # only displays base
mvis = MechanismVisualizer(state, visuals)

elements = visual_elements(robot, visuals)

open(mvis)

using Blink
window = Window()
body!(window, manipulate!(mvis))
