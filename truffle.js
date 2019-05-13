module.exports = {
    compilers: {
        solc: {
            version: "0.5.3",
            settings: {
                optimizer: {
                    enabled: true,
                    runs: 1000,
                }
            }
        },
    },
}
