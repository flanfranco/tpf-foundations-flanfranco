import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.pool import NullPool

engine = create_engine('postgresql://username:secret@db:5432/database', connect_args={'options': '-csearch_path={}'.format('olistdb')}, poolclass=NullPool)

  
if __name__ == '__main__':
    print('Application to load DB started...')
    print('Open connection to DB...')
    conn = engine.connect()
    print('Truncate tables...')
    conn.execute("TRUNCATE TABLE order_items, products, orders, order_payments, order_customer RESTART IDENTITY;")
    print('Truncate tables OK')
    csv_dict = {'olist_customers_dataset': 'order_customer', 'olist_orders_dataset': 'orders', 'olist_order_payments_dataset': 'order_payments', 'olist_products_dataset': 'products', 'olist_order_items_dataset': 'order_items'}    
    for csv_name in csv_dict:
    	csv_file = "/csv_volume/" + csv_name + ".csv"
    	print("CSV file to DataFrame: {}".format(csv_file))
    	df = pd.read_csv(csv_file)
    	table_name = csv_dict[csv_name]
    	print("DataFrame to DB table: {}".format(table_name))
    	df.to_sql(
    		table_name,
        	conn,
        	index=False,
        	if_exists='append'
        )
    conn.close()
    print('Closing connection to DB...')
    print('Application to load DB ended.')
