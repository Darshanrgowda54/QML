#ifndef EmployeeE_H
#define EmployeeE_H

#include <QObject>

class Employee : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ getName WRITE setName NOTIFY nameChanged FINAL)
    Q_PROPERTY(QString phoneNumber READ getPhoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged FINAL)
    Q_PROPERTY(QString employeeID READ getEmployeeID WRITE setEmployeeID NOTIFY EmployeeIDChanged FINAL)
    Q_PROPERTY(QString email READ getEmail WRITE setEmail NOTIFY emailChanged FINAL)
    Q_PROPERTY(QString joinDate READ getJoinDate WRITE setJoinDate NOTIFY joinDateChanged FINAL)
    Q_PROPERTY(float basicSalary READ getBasicSalary WRITE setBasicSalary NOTIFY basicSalaryChanged FINAL)
    Q_PROPERTY(float variableSalary READ getVariableSalary WRITE setVariableSalary NOTIFY variableSalaryChanged FINAL)
    Q_PROPERTY(float totalSalary READ getTotalSalary WRITE setTotalSalary NOTIFY totalSalaryChanged FINAL)
public:
    explicit Employee(QObject *parent = nullptr);
    ~Employee();

    QString getName() const;
    void setName(const QString &newName);

    QString getPhoneNumber() const;
    void setPhoneNumber(const QString &newPhoneNumber);

    QString getEmployeeID() const;
    void setEmployeeID(const QString &newEmployeeeID);

    QString getEmail() const;
    void setEmail(const QString &newEmail);

    QString getJoinDate() const;
    void setJoinDate(const QString &newJoinDate);

    float getBasicSalary() const;
    void setBasicSalary(const float &newBasicSalary);

    float getVariableSalary() const;
    void setVariableSalary(const float &newVariableSalary);

    float getTotalSalary() const;
    void setTotalSalary(const float &newTotalSalary);

signals:

    void nameChanged();
    void phoneNumberChanged();
    void EmployeeIDChanged();
    void emailChanged();
    void joinDateChanged();
    void basicSalaryChanged();
    void variableSalaryChanged();
    void totalSalaryChanged();

private:

    QString m_name;
    QString m_phoneNumber;
    QString m_EmployeeID;
    QString m_email;
    QString m_joinDate;
    float m_basicSalary;
    float m_variableSalary;
    float m_totalSalary;
};

#endif // EmployeeE_H
