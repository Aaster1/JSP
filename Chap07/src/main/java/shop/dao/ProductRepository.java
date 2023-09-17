package shop.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import shop.dto.Product;


public class ProductRepository extends JDBConnection{

	
	
	
	public List<Product> list(){
		
		ArrayList<Product> productList = new ArrayList<Product>();

		try {
			String sql = "SELECT * FROM product;";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				Product product = new Product();
				
				product.setProductId(rs.getString("product_id"));
				product.setName(rs.getString("name"));
				product.setUnitPrice(rs.getInt("unit_price"));
				product.setDescription(rs.getString("description"));
				product.setManufacturer(rs.getString("manufacturer"));
				product.setCategory(rs.getString("category"));
				product.setUnitsInStock(rs.getLong("units_in_stock"));
				product.setCondition(rs.getString("condition"));
				product.setFile(rs.getString("file"));
				
				productList.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productList;
	}
		
		
		public int insert(Product product) {
			int result = 0;
			String sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?,?,?);";
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(1, product.getProductId());
				psmt.setString(2, product.getName());
				psmt.setInt(3, product.getUnitPrice());
				psmt.setString(4, product.getDescription());
				psmt.setString(5, product.getManufacturer());
				psmt.setString(6, product.getCategory());
				psmt.setLong(7, product.getUnitsInStock());
				psmt.setString(8, product.getCondition());
				psmt.setString(9, product.getFile());
				result = psmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
			
		}
		
		public int update(String productId, Product product) {
			int result = 0;
			String sql = "UPDATE product SET product_id=?, name=?, unit_price=?, description=?, manufacturer=?, category=?, units_in_stock=?, `condition`=?, file=?;";
			
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(1, product.getProductId());
				psmt.setString(2, product.getName());
				psmt.setInt(3, product.getUnitPrice());
				psmt.setString(4, product.getDescription());
				psmt.setString(5, product.getManufacturer());
				psmt.setString(6, product.getCategory());
				psmt.setLong(7, product.getUnitsInStock());
				psmt.setString(8, product.getCondition());
				psmt.setString(9, product.getFile());
				result = psmt.executeUpdate();
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return result;
		}
		
		public int delete(String productId) {
			int result = 0;
			String sql = "DELETE FROM product WHERE product_id=?;";
			
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(1, productId);
				result = psmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			return result;
		}
				
		
		
		public Product getProductById(String productId) {
			
			Product product = new Product();
			
			String sql = "SELECT * FROM product WHERE product_id= ?;";
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(1, productId);
				rs = psmt.executeQuery();
				if(rs.next()){
					
					
					product.setProductId(rs.getString("product_id"));
					product.setName(rs.getString("name"));
					product.setUnitPrice(rs.getInt("unit_price"));
					product.setDescription(rs.getString("description"));
					product.setManufacturer(rs.getString("manufacturer"));
					product.setCategory(rs.getString("category"));
					product.setUnitsInStock(rs.getLong("units_in_stock"));
					product.setCondition(rs.getString("condition"));
					product.setFile(rs.getString("file"));
				}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}

			
			return product;
		}
		
		
	}

