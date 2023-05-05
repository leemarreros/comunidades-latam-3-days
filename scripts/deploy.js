const hre = require("hardhat");

async function main() {
  const MiPrimerContrato = await hre.ethers.getContractFactory(
    "MiPrimerContrato"
  );
  const miPrimerContrato = await MiPrimerContrato.deploy();
  var tx = await miPrimerContrato.deployed();

  console.log(`MiPrimerContrato se publicó en ${miPrimerContrato.address}`);

  // wait for 5 blocks confirmation
  await tx.deployTransaction.wait(10);

  await hre.run("verify:verify", {
    address: miPrimerContrato.address,
    constructorArguments: [],
  });
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
