#include "department_view.h"
#include "ui_department_view.h"

department_view::department_view(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::department_view)
{
    ui->setupUi(this);

    db = QSqlDatabase::database();

    ui->tableWidget->setColumnCount(3);
    QStringList list;
    list<<"编号"<<"院系名"<<"负责人";
    ui->tableWidget->setHorizontalHeaderLabels(list);

    QSqlQuery query(db);
    QString stat = QString("select D.dept_id, D.dept_name, T.tch_name "
                           "from department D, teacher T "
                           "where D.dept_master=T.tch_id ");
    query.exec(stat);
    for (int i=0;query.next();i++){
        int row_count = ui->tableWidget->rowCount();
        ui->tableWidget->setRowCount(row_count+1);//添加一行

        for (int j=0;j<3;j++)
            ui->tableWidget->setItem(i,j,new QTableWidgetItem(query.value(j).toString()));
    }

    ui->tableWidget->setEditTriggers(QAbstractItemView::NoEditTriggers);//设置禁止编辑
}

department_view::~department_view()
{
    delete ui;
}
