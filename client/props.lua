local QBCore = exports['qb-core']:GetCoreObject()
local SellerPed = Seller.coords
local PedModel = Config.PedModel
local PedHash = Config.PedHash

CreateThread(function()
  while (true) do
    ClearAreaOfPeds(431.28, 6467.48, 28.77, 17.5, 1)
    ClearAreaOfPeds(2162.89, 4982.4, 41.29, 35.0, 1)
    Wait(0)
  end
end)

-- Animals
CreateThread(function()
  RequestModel( GetHashKey( "a_c_cow" ) )
  while ( not HasModelLoaded( GetHashKey( "a_c_cow" ) ) ) do
      Wait(1)
  end
  RequestModel( GetHashKey( "a_c_hen" ) )
  while ( not HasModelLoaded( GetHashKey( "a_c_hen" ) ) ) do
      Wait(1)
  end
  RequestModel( GetHashKey( PedModel ) )
  while ( not HasModelLoaded( GetHashKey( PedModel ) ) ) do
      Wait(1)
  end
  cowped = CreatePed(1, 0xFCFA9E1E, 434.06, 6472.8, 28.77, 77.31, false, true)
  cowped1 = CreatePed(1, 0xFCFA9E1E, 425.61, 6463.31, 28.78, 31.94, false, true)
  cowped2 = CreatePed(1, 0xFCFA9E1E, 431.66, 6458.51, 28.75, 0, false, true)
  cowped3 = CreatePed(1, 0xFCFA9E1E, 437.68, 6453.88, 28.76, 0, false, true)
  chickenped1 = CreatePed(1, 0x6AF51FAF, 2386.25, 5048.14, 46.43, 49.52, 0, false, true)
  chickenped2 = CreatePed(1, 0x6AF51FAF, 2387.34, 5052.93, 46.45, 294.71, false, true)
  chickenped3 = CreatePed(1, 0x6AF51FAF, 2386.15, 5057.2, 46.44, 55.42, false, true)
  chickenped4 = CreatePed(1, 0x6AF51FAF, 2382.28, 5059.68, 46.44, 48.54, false, true)
  chickenped5 = CreatePed(1, 0x6AF51FAF, 2371.57, 5056.91, 46.44, 25.81, false, true)
  chickenped6 = CreatePed(1, 0x6AF51FAF, 2377.39, 5059.47, 46.44, 96.69, false, true)
  chickenped7 = CreatePed(1, 0x6AF51FAF, 2374.72, 5056.92, 46.44, 118.69, false, true)
  chickenped8 = CreatePed(1, 0x6AF51FAF, 2374.61, 5053.28, 46.44, 182.52, false, true)
  chickenped9 = CreatePed(1, 0x6AF51FAF, 2377.14, 5050.25, 46.44, 228.77, false, true)
  chickenped10 = CreatePed(1, 0x6AF51FAF, 2381.13, 5050.31, 46.44, 294.49, false, true)
  chickenped11 = CreatePed(1, 0x6AF51FAF, 2382.88, 5054.33, 46.44, 151.69, false, true)
  chickenped12 = CreatePed(1, 0x6AF51FAF, 2377.39, 5053.82, 46.44, 77.82, false, true)
  chickenped13 = CreatePed(1, 0x6AF51FAF, 2382.27, 5056.05, 46.44, 293.13, 0, false, true)
  chickenped14 = CreatePed(1, 0x6AF51FAF, 2376.23, 5047.78, 46.44, 212.34, false, true)
  chickenped15 = CreatePed(1, 0x6AF51FAF, 2374.83, 5049.35, 46.44, 122.6, false, true)
  chickenped16 = CreatePed(1, 0x6AF51FAF, 2379.87, 5059.42, 46.44, 179.99, false, true)
  farmerped4 = CreatePed(1, PedHash, SellerPed, false, true)
  SetEntityInvincible(farmerped4, true)
  SetBlockingOfNonTemporaryEvents(farmerped4, true)
  FreezeEntityPosition(farmerped4, true)
end)
