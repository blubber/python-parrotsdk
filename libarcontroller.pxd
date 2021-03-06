from libardiscovery cimport *

cdef extern from "libARController/ARCONTROLLER_Error.h":
    ctypedef enum eARCONTROLLER_ERROR:
        ARCONTROLLER_OK,
        ARCONTROLLER_ERROR,
        ARCONTROLLER_ERROR_NOT_IMPLEMENTED,

        ARCONTROLLER_ERROR_ALLOC,
        ARCONTROLLER_ERROR_BAD_PARAMETER,
        ARCONTROLLER_ERROR_MUTEX,
        ARCONTROLLER_ERROR_INIT_MUTEX,
        ARCONTROLLER_ERROR_STATE,
        ARCONTROLLER_ERROR_BUFFER_SIZE,

        ARCONTROLLER_ERROR_INIT,
        ARCONTROLLER_ERROR_INIT_THREAD,
        ARCONTROLLER_ERROR_INIT_ARNETWORKAL_MANAGER,
        ARCONTROLLER_ERROR_INIT_ARNETWORK_MANAGER,
        ARCONTROLLER_ERROR_INIT_NETWORK_CONFIG,
        ARCONTROLLER_ERROR_INIT_DEVICE_COPY,
        ARCONTROLLER_ERROR_INIT_DEVICE_GET_NETWORK_CONFIG,
        ARCONTROLLER_ERROR_INIT_DEVICE_JSON_CALLBACK,
        ARCONTROLLER_ERROR_INIT_GET_DATE,
        ARCONTROLLER_ERROR_INIT_GET_TIME,
        ARCONTROLLER_ERROR_INIT_STREAM,
        ARCONTROLLER_ERROR_INIT_SEMAPHORE,
        ARCONTROLLER_ERROR_NOT_SENT,
        ARCONTROLLER_ERROR_NO_VIDEO,
        ARCONTROLLER_ERROR_NO_AUDIO,
        ARCONTROLLER_ERROR_NO_ELEMENT,
        ARCONTROLLER_ERROR_NO_ARGUMENTS,
        ARCONTROLLER_ERROR_CANCELED,
        ARCONTROLLER_ERROR_COMMAND_GENERATING,

        ARCONTROLLER_ERROR_COMMAND_CALLBACK,
        ARCONTROLLER_ERROR_COMMAND_CALLBACK_ALREADY_REGISTERED,
        ARCONTROLLER_ERROR_COMMAND_CALLBACK_NOT_REGISTERED,

        ARCONTROLLER_ERROR_STREAMPOOL,
        ARCONTROLLER_ERROR_STREAMPOOL_FRAME_NOT_FOUND,

        ARCONTROLLER_ERROR_STREAMQUEUE,
        ARCONTROLLER_ERROR_STREAMQUEUE_EMPTY,

        ARCONTROLLER_ERROR_JNI,
        ARCONTROLLER_ERROR_JNI_ENV,
        ARCONTROLLER_ERROR_JNI_INIT,

        ARCONTROLLER_ERROR_EXTENSION,
        ARCONTROLLER_ERROR_EXTENSION_PRODUCT_NOT_VALID,

        ARCONTROLLER_ERROR_STREAM,
        ARCONTROLLER_ERROR_STREAM_RESYNC_REQUIRED


cdef extern from "libARController/ARCONTROLLER_Feature.h":
    ctypedef struct ARCONTROLLER_FEATURE_ARDrone3_t:
        pass


cdef extern from "libARController/ARCONTROLLER_Device.h":
    ctypedef enum eARCONTROLLER_DEVICE_STATE:
        ARCONTROLLER_DEVICE_STATE_STOPPED,
        ARCONTROLLER_DEVICE_STATE_STARTING,
        ARCONTROLLER_DEVICE_STATE_RUNNING,
        ARCONTROLLER_DEVICE_STATE_PAUSED,
        ARCONTROLLER_DEVICE_STATE_STOPPING,
        ARCONTROLLER_DEVICE_STATE_MAX

    ctypedef struct ARCONTROLLER_Device_t:
        ARCONTROLLER_FEATURE_ARDrone3_t *aRDrone3;

    ARCONTROLLER_Device_t *ARCONTROLLER_Device_New(ARDISCOVERY_Device_t *discoveryDevice,
                                                   eARCONTROLLER_ERROR *error)
    void ARCONTROLLER_Device_Delete (ARCONTROLLER_Device_t **deviceController)
    eARCONTROLLER_ERROR ARCONTROLLER_Device_Start (ARCONTROLLER_Device_t *deviceController)
    eARCONTROLLER_ERROR ARCONTROLLER_Device_Stop (ARCONTROLLER_Device_t *deviceController)
