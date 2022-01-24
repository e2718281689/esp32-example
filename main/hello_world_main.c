#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void myTask(void *pvParam)
{
    while (1)
    {
        printf("xxxxx\n");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}
void app_main(void)
{
    TaskHandle_t pxTask = NULL;
    UBaseType_t iPriority = 0;
    xTaskCreate(myTask, "one", 2048, NULL, 1, &pxTask);
    iPriority = uxTaskPriorityGet(pxTask);
    printf("iPriority=%d\n", iPriority);

    vTaskPrioritySet(pxTask, 5);

    iPriority = uxTaskPriorityGet(pxTask);
    printf("iPriority=%d\n", iPriority);
}
