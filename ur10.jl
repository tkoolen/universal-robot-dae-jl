
using Pkg
Pkg.activate(@__DIR__)

using RigidBodyDynamics, MeshCatMechanisms

urdf = joinpath(@__DIR__, "ur10.urdf")
robot = parse_urdf(urdf)
mvis = MechanismVisualizer(robot, URDFVisuals(urdf))
open(mvis)
