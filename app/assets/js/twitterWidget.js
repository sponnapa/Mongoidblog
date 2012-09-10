        new TWTR.Widget({
                version: 2,
                type: 'profile',
                rpp: 4,
                interval: 30000,
                width: 250,
                height: 500,
                theme: {
                    shell: {
                        background: '#9A3334',
                        color: '#F3FE0'
                    },
                    tweets: {
                        background: '#F3EFE0',
                        color: '#000000',
                        links: '#3399FF'
                    }
                },
                features: {
                    scrollbar: true,
                    loop: false,
                    live: true,
                    behavior: 'all'
                }
            }).render().setUser('SasPonnapalli').start();
