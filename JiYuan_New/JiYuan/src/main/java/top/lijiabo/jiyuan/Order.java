package top.lijiabo.jiyuan;

import javax.persistence.*;

@Entity
@Table(name = "jiyuanOrder")
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Column(name = "orderName", nullable = false)
    private String orderName;
    @Column(name = "orderClass")
    private String orderClass;
    @Column(name = "price")
    private Integer price;
    @Column(name = "endTime")
    private String endTime;
    @Column(name = "picture")
    private String picture;
    @Column(name = "postUid", nullable = false)
    private Integer postUid;
    @Column(name = "receiveUid")
    private Integer receiveUid;
    enum Status {
        WAITING, ACCEPTED, FINISHED, CANCELED
    }
    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false)
    private Status status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getOrderClass() {
        return orderClass;
    }

    public void setOrderClass(String orderClass) {
        this.orderClass = orderClass;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Integer getPostUid() {
        return postUid;
    }

    public void setPostUid(Integer postUid) {
        this.postUid = postUid;
    }

    public Integer getReceiveUid() {
        return receiveUid;
    }

    public void setReceiveUid(Integer receiveUid) {
        this.receiveUid = receiveUid;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (!getId().equals(order.getId())) return false;
        return getPostUid().equals(order.getPostUid());
    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + getPostUid().hashCode();
        return result;
    }
}