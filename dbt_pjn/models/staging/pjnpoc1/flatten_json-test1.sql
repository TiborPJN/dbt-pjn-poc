select 
    c.data.id_number, 
    i.payment_sequence,
    i.paid_at 
from pjnevents.consumerorderactivatedevent_consumerorderactivatedevent c, c.data.instalments i  

