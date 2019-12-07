cmake_minimum_required(VERSION 2.8.3)
project(ersow_comm)
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs 
  message_generation
)

add_message_files( DIRECTORY msg
	FILES
	data_agent0.msg
	data_agent1.msg
	data_agent2.msg
	data_agent3.msg
)

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs  # Or other packages containing msgs
 )

catkin_package (
  	INCLUDE_DIRS include
  	LIBRARIES ersow_comm
  	CATKIN_DEPENDS roscpp std_msgs
	CATKIN_DEPENDS message_runtime std_msgs
 	DEPENDS system_lib
)




include_directories(${catkin_INCLUDE_DIRS})

## Declare a C++ library
# add_library(${PROJECT_NAME}
#)

# add_dependencies(${PROJECT_NAME} ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
	
add_executable(comm_node 
	src/comm.cpp)
target_link_libraries(comm_node ${catkin_LIBRARIES})
add_dependencies(comm_node  ersow_comm_generate_messages_cpp)


add_executable(ratdma_node 
	src/ratdma.cpp
	src/ratdma/multicast.h
	src/rtdb/rtdb_comm.h)
target_link_libraries(ratdma_node ${catkin_LIBRARIES})
add_dependencies(ratdma_node  ersow_comm_generate_messages_cpp)


add_executable(strategy_node
	src/strategy.cpp)
target_link_libraries(strategy_node ${catkin_LIBRARIES})
add_dependencies(strategy_node  ersow_comm_generate_messages_cpp)


add_executable(learn_node
	src/learn.cpp)
target_link_libraries(learn_node ${catkin_LIBRARIES})
add_dependencies(learn_node ersow_comm_generate_messages_cpp)

# set_target_properties(${PROJECT_NAME}_node PROPERTIES OUTPUT_NAME node PREFIX "")

# add_dependencies(${PROJECT_NAME}_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

# target_link_libraries(${PROJECT_NAME}_node
#   ${catkin_LIBRARIES}
# )

