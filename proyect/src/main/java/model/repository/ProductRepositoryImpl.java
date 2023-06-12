package model.repository;

import connection_test.ConnectionPool;
import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements model.repository.Repository<Product>{
    private  String sql = null;

    @Override
    public List<Product> listAllObj() throws SQLException {
        sql = "select p.product_id, p.product_name, p.product_value, p.category_id " +
                "from product_tbl p order by p.product_value";

        List<Product> products= new ArrayList<>();
        try (Connection conn = ConnectionPool.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)){
            while (rs.next()){
                Product p = createObj(rs);
                products.add(p);
            }//While
        }// try
        return products;
    }

    @Override
    public Product byIdObj(Integer id) throws SQLException {
        sql = "select p.product_id, p.product_name, p.product_value, p.category_id " +
                "from product_tbl p " +
                "where p.product_id = ?";

        Product product = null;
        try (Connection conn = ConnectionPool.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,id);
            try(ResultSet rs = ps.executeQuery()){
                if (rs.next()){
                    product = createObj(rs);
                }
            }
        }//Try
        return product;
    }


    @Override
    public Integer saveObj(Product product) throws SQLException {
        int rowsAffected =0;
        if (product.getProduct_id()!=null && product.getProduct_id()>0){
            sql = "update product_tbl set product_name=?, product_value=?,category_id=? "
                    +" where product_id=?";

        } else {
            sql = "insert into product_tbl( product_name, product_value, category_id) "+
                    "values(upper(?), (?),(?))";
        }
        try(Connection conn =ConnectionPool.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, product.getProduct_name());
            ps.setFloat(2, product.getProduct_value());
            ps.setInt(3, product.getCategory_id());
            if (product.getProduct_id()!=null) {
                ps.setInt(4,product.getProduct_id());
            }
            rowsAffected =ps.executeUpdate();
        }
        return rowsAffected;
    }

    @Override
    public void deleteObj(Integer id) throws SQLException {
        sql= "delete from product_tbl where product_id=? ";
        try(Connection conn = ConnectionPool.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,id);
            ps.executeUpdate();
        }//try
    }

    @Override
    public Product createObj(ResultSet rs) throws SQLException {
        Product product = new Product();
        product.setProduct_id(rs.getInt("product_id"));
        product.setProduct_name(rs.getString("product_name"));
        product.setProduct_value(rs.getFloat("product_value"));
        product.setCategory_id(rs.getInt("category_id"));
        return product;
    }
}
