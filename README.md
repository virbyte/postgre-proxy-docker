# postgre-proxy-docker
Docker container to proxy PostgreSQL

https://hub.docker.com/r/francismeadow/postgre-proxy

Example with Actions:

    services:
      postgre:
        image: francismeadow/postgre-proxy:v0.1.0-alpha
        ports:
          - 5432:5432
        env:
          REMOTE_USER: ${{ secrets.REMOTE_USER }}
          REMOTE_HOST: ${{ secrets.REMOTE_HOST }}
          REMOTE_KEY: ${{ secrets.REMOTE_KEY }}
