hunter_config(
    Boost VERSION "1.76.0-local"
    URL
    "https://osp-1257653870.cos.ap-guangzhou.myqcloud.com/FISCO-BCOS/FISCO-BCOS/deps/boost_1_76_0.tar.bz2
    https://downloads.sourceforge.net/project/boost/boost/1.76.0/source/boost_1_76_0.tar.bz2
    https://nchc.dl.sourceforge.net/project/boost/boost/1.76.0/boost_1_76_0.tar.bz2"
    SHA1
    8064156508312dde1d834fec3dca9b11006555b6
    CMAKE_ARGS
    CONFIG_MACRO=BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX
)

hunter_config(OpenSSL VERSION tassl_1.1.1b_v1.4-local
    URL https://${URL_BASE}/FISCO-BCOS/TASSL-1.1.1b/archive/f9d60fa510e5fbe24413b4abdf1ea3a48f9ee6aa.tar.gz
    SHA1 e56121278bf07587d58d154b4615f96575957d6f
)

hunter_config(cpprestsdk VERSION 2.10.18-local
    URL https://github.com/FISCO-BCOS/cpprestsdk/archive/723c23c92117d21c9eb16008a92d2a6b1b339496.tar.gz
	SHA1 968d6d80e2c5eab6fd9a3e4f74b1ee6f6edf7226
    CMAKE_ARGS
    CPPREST_EXCLUDE_WEBSOCKETS=ON BUILD_TESTS=OFF BUILD_SAMPLES=OFF
)

hunter_config(
    Protobuf VERSION "3.14.0-4a09d77-p0-local"
    URL
    "https://osp-1257653870.cos.ap-guangzhou.myqcloud.com/FISCO-BCOS/deps/protobuf/v3.14.0-4a09d77-p0.tar.gz
    https://github.com/cpp-pm/protobuf/archive/v3.14.0-4a09d77-p0.tar.gz"
    SHA1
    3553ff3bfd7d0c4c1413b1552064b3dca6fa213e
)
hunter_config(re2 VERSION ${HUNTER_re2_VERSION} CMAKE_ARGS CMAKE_POSITION_INDEPENDENT_CODE=TRUE RE2_BUILD_TESTING=OFF)
hunter_config(abseil VERSION ${HUNTER_abseil_VERSION} CMAKE_ARGS CMAKE_CXX_FLAGS=-std=c++11 CMAKE_POSITION_INDEPENDENT_CODE=TRUE ABSL_ENABLE_INSTALL=ON ABSL_RUN_TESTS=OFF)
hunter_config(gRPC VERSION ${HUNTER_gRPC_VERSION} CMAKE_ARGS CMAKE_CXX_FLAGS=-std=c++17 CMAKE_POSITION_INDEPENDENT_CODE=TRUE)