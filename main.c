/*
 * main.c
 *
 *  Created on: Jun 24, 2015
 *      Author: titan
 */
/*- Includes ---------------------------------------------------------------*/
#include <stdbool.h>
#include <avr/boot.h>
#include <util/delay.h>


#include "config.h"
#include "hal.h"
#include "phy.h"
#include "sys.h"
#include "nwk.h"
#include "halUart.h"
#include "halLed.h"

typedef bool (*appDataInd_ptr_t)(NWK_DataInd_t *ind);
static bool appDataInd(NWK_DataInd_t *ind);

void HAL_UartBytesReceived(uint16_t bytes)
{

}

static void APP_TaskHandler(void)
{

}

static bool appDataInd(NWK_DataInd_t *ind)
{
	HAL_LedToggle(0);

	for (uint8_t i = 0; i < ind->size; i++)
	{
		HAL_UartWriteByte(ind->data[i]);
	}

	return true;
}

void init_nwk()
{
	NWK_SetAddr(0x389C);
	NWK_SetPanId(0x1973);
	PHY_SetChannel(0x16);
	PHY_SetTxPower(0);
	PHY_SetRxState(true);
	NWK_OpenEndpoint(1, appDataInd);
}

int main(void)
{
	SYS_Init();
	HAL_UartInit(38400);
	HAL_LedInit();
	HAL_LedOff(0);
	init_nwk();
	while (1)
	{
		SYS_TaskHandler();
		HAL_UartTaskHandler();
		APP_TaskHandler();
	}
}
