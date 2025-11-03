# ModuleLoader
A library module for the storage and retrieval of modules by a designated tag, in this instance, **"Library"**. For further reference, see [CollectionService](https://create.roblox.com/docs/reference/engine/classes/CollectionService). It accepts a single parameter — a string representing the target module’s name.

This module is designed to reduce the process of module loading; rather than specifying the full path manually, you need only provide the module’s name.

### Usage
```luau
local ServerScriptService = game:GetService("ServerScriptService")
local LoadModule = require(ServerScriptService:FindFirstChild("ModuleLoader")) --// Your path to module

local ExampleClass = LoadModule("ExampleClass")
local myExampleClass = ExampleClass.new()
```
