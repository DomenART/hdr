<?php

class TicketMultipleProcessor extends modProcessor
{


    /**
     * @return array|string
     */
    public function process()
    {
        if (!$method = $this->getProperty('method', false)) {
            return $this->failure();
        }
        $ids = json_decode($this->getProperty('ids'), true);
        if (empty($ids)) {
            return $this->success();
        }

        /** @var Tickets $Tickets */
        $Tickets = $this->modx->getService('Tickets');

        foreach ($ids as $id) {
            /** @var modProcessorResponse $response */
            $response = $Tickets->runProcessor('mgr/ticket/' . $method, array('id' => $id));
            if ($response->isError()) {
                return $response->getResponse();
            }
        }

        return $this->success();
    }

}

return 'TicketMultipleProcessor';