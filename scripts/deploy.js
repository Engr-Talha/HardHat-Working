
async function main() {

    const [deployer] = await ethers.getSigners();
    console.log('Deploying Contracts with the account: ', deployer.address);

    const balance = await deployer.getBalance();
    console.log('Account Balce:', balance.toString());

    const Token = await ethers.getContractFactory('Token');
    const token = await Token.deploy();
    console.log('Token address:', token.address)


}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    })

