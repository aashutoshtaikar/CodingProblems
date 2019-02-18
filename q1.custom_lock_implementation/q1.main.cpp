/*1) custom_lock Test
*/

#include <iostream>
#include <thread>
#include <mutex>
#include "q1.custom_lock.h"


std::mutex mtx;		//mutex1
std::mutex mtx2;	//mutex2
int sharedVar = 0;

void foo(){
	printf("starting thread %d \n", std::this_thread::get_id());
	custom_locks::lock_guard<std::mutex,std::mutex> *lg;
	lg->lock(mtx,mtx2);
	sharedVar++;
	std::this_thread::sleep_for(std::chrono::seconds(1));
	printf("running locked section from thread:%d, sharedVar:%d  \n", std::this_thread::get_id(), sharedVar);
	lg->unlock(mtx,mtx2);
}


int main() {
while(true){
	std::thread thread1(foo);
	std::thread thread2(foo);
	std::thread thread3(foo);

	thread1.join();
	thread2.join();
	thread3.join();

	std::cout << "\nfinished---press Ctrl^C to exit---\n\n";
	}
}
