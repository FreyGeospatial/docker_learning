FROM python:3.11-slim-bullseye

ARG my_build_arg1
ARG my_build_arg2

ENV APP_ENV1=${my_build_arg1}
ENV APP_ENV2=${my_build_arg2}

CMD echo ${APP_ENV1} && echo ${APP_ENV2}

# to build and pass values at build time, use:
# docker build --build-arg my_build_arg1='my_arg' --build-arg my_build_arg2='hello, world!' -t 'my_image' .

# to run, use:
# docker run my_image