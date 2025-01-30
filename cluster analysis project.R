## Cluster Analysis
data <- read.csv("C:/Users/ehsan/my_data/Data_Analytics/Data Sources/USArrests.csv")
View(data)
head(data)
tail(data)
str(data)
row.names(data)<-c(data$X)
head(data)
df<-data[,-1]
View(df)
head(df)
df<-na.omit(df)
require(stats)
res_dist<-dist(x=df,method = "euclidean")
x<-as.matrix(res_dist)[1:6,1:6]
x
round(x,digits = 3)
require(stats)
res.hc<-hclust(d=res_dist,method = "complete")
plot(x=res.hc)
require(factoextra)
fviz_dend(x=res.hc,cex = 0.7,lwd = 0.7)
require(grDevices)
colors()
require(scales)
palette()
show_col(palette(rainbow(6)))
require(ggsci)
show_col(pal_jco(palette = c("default"))(10))
show_col(pal_jco("default",alpha = 0.6)(10))
fviz_dend(x=res.hc,cex=0.8,lwd=0.8,k=4,k_colors = c("red","green3","blue","magenta")
          ,ggtheme = theme_void() )









