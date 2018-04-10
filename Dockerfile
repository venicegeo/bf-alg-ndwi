FROM venicegeo/beachfront:latest

COPY requirements*txt $BUILD/

RUN \
	pip install -r requirements.txt; \
	pip install -r requirements-dev.txt

COPY . $BUILD/

RUN \
    pip install .

WORKDIR /home/geolambda
