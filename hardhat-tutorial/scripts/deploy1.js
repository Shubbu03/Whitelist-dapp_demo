const {ethers} = require("hardhat")

async function main(){
    const whiteListContract = await ethers.getContractFactory("Whitelist");

    const deployed = await whiteListContract.deploy(10);

    await deployed.deployed();

    console.log("Whitelist contract address", deployed.address);
}

main()
    .then(()=> process.exit(0))
    .catch((error)=>{
        console.log(error);
        process.exit(1);
    });
//0x92Bc0b20955d8Fca4cdDF70c925b4e02cAf9bF1A 